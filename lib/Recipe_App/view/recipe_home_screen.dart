import 'package:flutter/material.dart';
import 'package:intro_app/Recipe_App/service/recipe_data_service.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intro_app/Recipe_App/view/recipe_detail_screen.dart';

class RecipeHomeScreen extends StatelessWidget {
  const RecipeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dataService = RecipeDataService();
    return Scaffold(
      appBar: AppBar(title: Text('Recipes')),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: dataService.getRecipes().length,
        itemBuilder: (context, index) {
          final recipe = dataService.getRecipes()[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return RecipeDetailScreen(recipeModel: recipe);
              }));
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    offset: Offset(-1.5, 1.5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      child: Image.network(
                        recipe.image,
                        fit: BoxFit.cover,
                        height: 100,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          recipe.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              recipe.cuisine,
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Italiana",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            RatingBarIndicator(
                              rating: recipe.rating,
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: Colors.amber.shade800,
                              ),
                              itemCount: 5,
                              itemSize: 16,
                              direction: Axis.horizontal,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
