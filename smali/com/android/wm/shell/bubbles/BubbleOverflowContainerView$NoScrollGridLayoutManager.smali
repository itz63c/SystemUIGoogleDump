.class Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$NoScrollGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "BubbleOverflowContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoScrollGridLayoutManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;Landroid/content/Context;I)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$NoScrollGridLayoutManager;->this$0:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    .line 76
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$NoScrollGridLayoutManager;->this$0:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 82
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 90
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 91
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    if-ge v0, p0, :cond_0

    return v0

    :cond_0
    return p0
.end method
