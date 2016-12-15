## CCDraggableCard :sparkles:

![image](https://github.com/liuzechen/CCDraggableCard-Master/raw/master/screenshot.gif)

`CCDraggableCard`是左滑无感|右滑喜欢的卡牌视图。作者会不间断更新，如`CCDraggableCard`有幸被您搜到，请Star予以支持(^__^) ……
`目前仅支持代码创建自定义CardView, Xib创建正在完善`

#### 使用

`CCDraggableCard`中主视图`CCDraggableContainer`的使用类似UITableView, 拥有`CCDraggableContainerDelegate`和`CCDraggableContainerDataSource`对CardView进行操作。

#####1.`CCDraggableContainer`初始化

```
@property (nonatomic, strong) CCDraggableContainer *container;

self.container = [[CCDraggableContainer alloc] initWithFrame:... style:CCDraggableStyleUpOverlay];
self.container.delegate = self;
self.container.dataSource = self;
[self.view addSubview:self.container];
```

#####2.刷新数据
```
[self.container reloadData];
```

#####3.协议

`CCDraggableContainerDataSource`

```
- (CCDraggableCardView *)draggableContainer:(CCDraggableContainer *)draggableContainer viewForIndex:(NSInteger)index;
- (NSInteger)numberOfIndexs;
```
`CCDraggableContainer Delegate`

```
- (void)draggableContainer:(CCDraggableContainer *)draggableContainer draggableDirection:(CCDraggableDirection)draggableDirection widthRatio:(CGFloat)widthRatio heightRatio:(CGFloat)heightRatio;
- (void)draggableContainer:(CCDraggableContainer *)draggableContainer cardView:(CCDraggableCardView *)cardView didSelectIndex:(NSInteger)didSelectIndex;
- (void)draggableContainer:(CCDraggableContainer *)draggableContainer finishedDraggableLastCard:(BOOL)finishedDraggableLastCard;
```

#### 版本及功能
`v.1.0`
> CCDraggableContainer通过代码创建

> 卡牌(滑动距离、左右方向、点击)


#### 联系作者 
1040981145@qq.com

#### 链接
> 1.🌟星光闪烁特效:https://github.com/liuzechen/CC_Twinkle

> 2.仿网易下拉刷新:https://github.com/liuzechen/CCEaseRefresh