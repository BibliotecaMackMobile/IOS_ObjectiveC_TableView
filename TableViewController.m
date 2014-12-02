//
//  TableViewController.m
//  TableView
//
//  Created by Eduardo Lombardi on 19/02/14.
//  Copyright (c) 2014 Eduardo Lombardi. All rights reserved.
//

#import "TableViewController.h"
#import "Contatos.h"
#import "AddViewController.h"
#import "DetailViewController.h"
#import "EditViewController.h"
@interface TableViewController ()

@end

@implementation TableViewController
@synthesize btnSearchBar;
@synthesize listaBusca;
#pragma mark - Metodos de inicializacao
- (id)init
{
    //Contatos * c = [[Contatos alloc]init];
    // chama a classe mae definindo o estilo da TableView
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
        [self loadView];
        [self.tableView reloadData];
//        for( int i =0; i<10; i++) {
//           [lista addItem];
//            //[c addItem];
//    }
        //[[Contatos instancia]addItem];
}
    return self;
    
}




-(void) viewDidLoad {
//    UIView *headerContentView = [[UIView alloc] initWithFrame:headerView.bounds];
//    headerContentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
//    [headerView addSubview:headerContentView];
//    srand(time(NULL));
    [super viewDidLoad];
    lista = [[Contatos instancia] iniciar];
    [self loadView];
   // [self.tableView reloadData];
    
    for(int i=0; i<10;i++) {
    //[[Contatos instancia] addItem];
    }
    
    
    //NSLog(@" LISTA LOAD %d",lista.contatos.count);
   // NSLog(@" LISTA LOAD %d",[Contatos instancia].contatos.count);
}
- (id)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
//
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return [listaBusca count];
    } else {
        return [[[Contatos instancia]contatos]count] ;
    }
    
      return [[[Contatos instancia]contatos]count];

    // Return the number of rows in the section.
    //NSLog(@" LISTA %d",[[[Contatos instancia]contatos] count]);
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    Contatos *c = [[[Contatos instancia]contatos] objectAtIndex:[indexPath row] ] ;
    
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        c = [listaBusca objectAtIndex:indexPath.row];
    } else {
        c = [[[Contatos instancia]contatos] objectAtIndex:indexPath.row];
    }
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    [[cell textLabel]setText:[c description]] ;
    [[cell detailTextLabel]setText:[c descriptiont]];
    //NSLog(@"%@",[c description]);
    // Configure the cell...
    
    return cell;
}
- (UIView *)HeaderView
{
    // Se ainda nao tiver carregado a view de cabecalho...
    if (!headerView) {
        // Carrega HeaderView.xib
        [[NSBundle mainBundle] loadNibNamed:@"View" owner:self options:nil];
    }
    return headerView;
}

- (UIView *)tableView:(UITableView *)tv viewForHeaderInSection:(NSInteger)sec
{
    if(sec ==0)
        return [self HeaderView];
    else
    return 0;;
}
-(void)viewWillAppear:(BOOL)animated {
    self.listaBusca = [NSMutableArray arrayWithCapacity:[[[Contatos instancia]contatos]count]];
    [self.tableView reloadData];
}

- (CGFloat)tableView:(UITableView *)tv heightForHeaderInSection:(NSInteger)sec
{
    return [[self HeaderView] bounds].size.height;
    
}
//- (void)scrollViewDidScroll:(UIScrollView *)scrollView
//{
//    CGFloat sectionHeaderHeight = [[self HeaderView] bounds].size.height;
//    if (scrollView.contentOffset.y<=sectionHeaderHeight&&scrollView.contentOffset.y>=0) {
//        scrollView.contentInset = UIEdgeInsetsMake(-scrollView.contentOffset.y, 0, 0, 0);
//    } else if (scrollView.contentOffset.y>=sectionHeaderHeight) {
//        scrollView.contentInset = UIEdgeInsetsMake(-sectionHeaderHeight, 0, 0, 0);
//    }
//}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
     [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryCheckmark;
    DetailViewController *detailViewController = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    [detailViewController insert:[indexPath row]];
    // Pass the selected object to the new view controller.
    EditViewController * novo = [[EditViewController alloc]initWithNibName:@"EditViewController" bundle:nil];
    // Push the view controller.
    [self presentViewController:detailViewController animated:YES completion:nil];
    //[self presentViewController:detailViewController animated:YES completion:nil];
}
 
- (void)setEditing:(BOOL)editing animated:(BOOL)animated {
    [super setEditing:editing animated:animated];
    [self.tableView setEditing:editing animated:YES];
    if (editing) {
        _btnAdd.enabled = NO;
    } else {
        _btnAdd.enabled = YES;
    }
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //remove the deleted object from your data source.
        //If your data source is an NSMutableArray, do this
        //NSLog(@"%d",[[[Contatos instancia]contatos]count]);
        [[[Contatos instancia]contatos] removeObjectAtIndex:[indexPath row]];
        [self.tableView reloadData];
    }
}

- (IBAction)adicionarLista:(id)sender {
//    [[Contatos instancia] addItemWithNome:@"Eduardo" email:nil endereco:nil telefone:nil];
    UIViewController *vc = [[AddViewController alloc] initWithNibName:@"AddViewController" bundle:nil];
    [self presentViewController:vc animated:YES completion:nil];
////
}
#pragma mark Content Filtering
-(void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope {
    // Update the filtered array based on the search text and scope.
    // Remove all objects from the filtered search array
    [self.listaBusca removeAllObjects];
    // Filter the array using NSPredicate
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF.nome contains[c] %@",searchText];
    listaBusca = [NSMutableArray arrayWithArray:[[[Contatos instancia]contatos] filteredArrayUsingPredicate:predicate]];
}

-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString {
    // Tells the table data source to reload when text changes
    [self filterContentForSearchText:searchString scope:
     [[self.searchDisplayController.searchBar scopeButtonTitles] objectAtIndex:[self.searchDisplayController.searchBar selectedScopeButtonIndex]]];
    // Return YES to cause the search result table view to be reloaded.
    return YES;
}

-(BOOL)searchDisplayController:
(UISearchDisplayController *)controller shouldReloadTableForSearchScope:(NSInteger)searchOption {
    // Tells the table data source to reload when scope bar selection changes
    [self filterContentForSearchText:self.searchDisplayController.searchBar.text scope:
     [[self.searchDisplayController.searchBar scopeButtonTitles] objectAtIndex:searchOption]];
    // Return YES to cause the search result table view to be reloaded.
    return YES;
}
@end
