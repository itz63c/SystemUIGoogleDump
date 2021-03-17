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
.field private mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V
    .locals 1

    .line 536
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 537
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 538
    instance-of v0, p2, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 539
    check-cast p2, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/CustomizeTileView;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const/4 v0, 0x0

    .line 540
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 541
    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {p2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/plugins/qs/QSIconView;->disableAnimation()V

    .line 542
    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 543
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$500(Lcom/android/systemui/qs/customize/TileAdapter;)Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    return-object p0
.end method

.method private add()V
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$800(Lcom/android/systemui/qs/customize/TileAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 600
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->accessibility_qs_edit_tile_added:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 599
    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private remove()V
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$900(Lcom/android/systemui/qs/customize/TileAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 607
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->accessibility_qs_edit_tile_removed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 606
    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method canAdd()Z
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$700(Lcom/android/systemui/qs/customize/TileAdapter;I)Z

    move-result p0

    return p0
.end method

.method canRemove()Z
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$600(Lcom/android/systemui/qs/customize/TileAdapter;I)Z

    move-result p0

    return p0
.end method

.method canTakeAccessibleAction()Z
    .locals 0

    .line 624
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

    .line 548
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 549
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    sget v1, Lcom/android/systemui/R$id;->tile_label:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 550
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 551
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getAppLabel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 552
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getAppLabel()Landroid/widget/TextView;

    move-result-object p0

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method isCurrentTile()Z
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1000(Lcom/android/systemui/qs/customize/TileAdapter;I)Z

    move-result p0

    return p0
.end method

.method startAccessibleAdd()V
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1100(Lcom/android/systemui/qs/customize/TileAdapter;I)V

    return-void
.end method

.method startAccessibleMove()V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1200(Lcom/android/systemui/qs/customize/TileAdapter;I)V

    return-void
.end method

.method public startDrag()V
    .locals 4

    .line 556
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 557
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v3, 0x3f99999a    # 1.2f

    .line 558
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 559
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 560
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    sget v3, Lcom/android/systemui/R$id;->tile_label:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 561
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    .line 562
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 563
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getAppLabel()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 564
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 565
    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public stopDrag()V
    .locals 5

    .line 569
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 570
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 571
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 572
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 573
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    sget v4, Lcom/android/systemui/R$id;->tile_label:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 574
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 575
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 576
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getAppLabel()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 577
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const v0, 0x3f19999a    # 0.6f

    .line 578
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method toggleState()V
    .locals 1

    .line 590
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->canAdd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->add()V

    goto :goto_0

    .line 593
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->remove()V

    :goto_0
    return-void
.end method
