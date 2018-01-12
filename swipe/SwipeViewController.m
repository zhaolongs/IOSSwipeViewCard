

#import "SwipeViewController.h"
#import "SMSwipeView.h"

@interface SwipeViewController ()<SMSwipeDelegate>

@property (weak, nonatomic) IBOutlet SMSwipeView *swipe;

@property (nonatomic,strong) NSArray * colors;

@end

@implementation SwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"滑动效果";
    self.swipe.delegate=self;
    self.swipe.isStackCard=YES;
    self.colors=@[[UIColor redColor],[UIColor yellowColor],[UIColor blueColor],[UIColor yellowColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell*)SMSwipeGetView:(SMSwipeView *)swipe withIndex:(int)index{
    static NSString * identify=@"testIndentify";
    UITableViewCell * cell=[self.swipe dequeueReusableUIViewWithIdentifier:identify];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    }else{
        NSLog(@"%@",@"not nil");
    }
    
    cell.textLabel.text=[NSString stringWithFormat:@"这是一个很神奇的效果%d",index];
    cell.textLabel.textColor=[UIColor whiteColor];
    cell.backgroundColor=[UIColor blueColor];
    cell.imageView.image=[UIImage imageNamed:@"choose_gou"];
    cell.layer.cornerRadius=10;
    return cell;
}

-(NSInteger)SMSwipeGetTotaleNum:(SMSwipeView *)swipe{
    return 10;
}

@end
