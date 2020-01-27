# A Dynamic Material Design Card for iOS

## Changing Cards and CardItems
`CardViewController` makes use of a Card factory that you can use to inject N Cards. A maximum number of Items per Card, MaxItems, can be supplied, and a random number between 1 and maxItems will be included in the card. 

## CollectionTableCell
The `CollectionTableCell` is the `UITableViewCell` that will contain a `UICollectionView`. If we want to display a single Card - We will be displaying a tableView with a single Cell. 

A single `CollectionTableCell`, containing a `UICollectionView` dor every Card, we will display a `CollectionTableCell`. Their data source is a `CardViewModel`. `CardViewModel` contains an array of `ItemViewModels`- Its data-source. Each of these is displayed using a custom `UICollectionViewCell`.


Each `ItemCell` is registered in our `UICollectionView`. When a new `ItemCell` is created it needs to be registered with `CollectionTableCell`.

## CardFlowLayout
`CardFlowLayout` is how each Item cell is displayed in a column. The Item width is set to the width of the collection view.

## CardViewModel
`CardViewModel` is initialized with a Card model. For the example project, A `TitleItemViewModel` and an `ImageItemViewModel` is injected as the first and second objects in the data-source array. Each Item model in our Card is used to create an `ItemCellViewModel`. Finally, a `FooterItemViewmodel` is appended. 

## CardItemCell
`CardItemCell` is a parent class of all the items in our collection View.

## Items
`CardItems` are simply custom `UICollectionViewCell`s and their corresponding ViewModel. Theres no limit to the number of Item types used in a Card. In the case of the sample application, 4 CardItems have been defined. `TextItemCell`, a `TitleItemCell`, `FooterItemCell` and an `ImageItemCell`. 
