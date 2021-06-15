.class public Lcom/android/systemui/qs/customize/TileAdapter$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/TileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Holder"
.end annotation


# instance fields
.field private mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V
    .locals 1

    .line 551
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 552
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 553
    instance-of v0, p2, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 554
    check-cast p2, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    .line 555
    invoke-virtual {p2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/plugins/qs/QSIconView;->disableAnimation()V

    .line 556
    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 557
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$500(Lcom/android/systemui/qs/customize/TileAdapter;)Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;
    .locals 0

    .line 548
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    return-object p0
.end method

.method private add()V
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$800(Lcom/android/systemui/qs/customize/TileAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 625
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->accessibility_qs_edit_tile_added:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 624
    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private remove()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$900(Lcom/android/systemui/qs/customize/TileAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 632
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->accessibility_qs_edit_tile_removed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 631
    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method canAdd()Z
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$700(Lcom/android/systemui/qs/customize/TileAdapter;I)Z

    move-result p0

    return p0
.end method

.method canRemove()Z
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$600(Lcom/android/systemui/qs/customize/TileAdapter;I)Z

    move-result p0

    return p0
.end method

.method canTakeAccessibleAction()Z
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$400(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clearDrag()V
    .locals 2

    .line 567
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 568
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    instance-of v1, v0, Lcom/android/systemui/qs/customize/CustomizeTileView;

    if-eqz v1, :cond_0

    .line 569
    sget v1, Lcom/android/systemui/R$id;->tile_label:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 570
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 571
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 572
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/view/View;

    move-result-object p0

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public getTileAsCustomizeView()Lcom/android/systemui/qs/customize/CustomizeTileView;
    .locals 0

    .line 563
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizeTileView;

    return-object p0
.end method

.method isCurrentTile()Z
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1000(Lcom/android/systemui/qs/customize/TileAdapter;I)Z

    move-result p0

    return p0
.end method

.method startAccessibleAdd()V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1100(Lcom/android/systemui/qs/customize/TileAdapter;I)V

    return-void
.end method

.method startAccessibleMove()V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1200(Lcom/android/systemui/qs/customize/TileAdapter;I)V

    return-void
.end method

.method public startDrag()V
    .locals 4

    .line 577
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 578
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v3, 0x3f99999a    # 1.2f

    .line 579
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 580
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 581
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    instance-of v3, v0, Lcom/android/systemui/qs/customize/CustomizeTileView;

    if-eqz v3, :cond_0

    .line 582
    sget v3, Lcom/android/systemui/R$id;->tile_label:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 583
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    .line 584
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 585
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 586
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 587
    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public stopDrag()V
    .locals 5

    .line 592
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 593
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 594
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 595
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 596
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    instance-of v4, v0, Lcom/android/systemui/qs/customize/CustomizeTileView;

    if-eqz v4, :cond_0

    .line 597
    sget v4, Lcom/android/systemui/R$id;->tile_label:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 598
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 599
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 600
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 601
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const v0, 0x3f19999a    # 0.6f

    .line 602
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method toggleState()V
    .locals 1

    .line 615
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->canAdd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->add()V

    goto :goto_0

    .line 618
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->remove()V

    :goto_0
    return-void
.end method
