//
//  TableViewController.h
//  TableView
//
//  Created by Eduardo Lombardi on 19/02/14.
//  Copyright (c) 2014 Eduardo Lombardi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contatos.h"
@interface TableViewController : UITableViewController <UISearchBarDelegate, UISearchDisplayDelegate>{
    Contatos * lista;
     IBOutlet UIView *headerView;
    IBOutlet UIView * headerContentView;
    NSMutableArray * listaBusca;
}
@property (weak, nonatomic) IBOutlet UIButton *btnAdd;
- (IBAction)adicionarLista:(id)sender;
@property (weak, nonatomic) IBOutlet UISearchBar *btnSearchBar;
- (UIView *)headerView;
@property (nonatomic,strong)NSMutableArray * listaBusca;
@end
