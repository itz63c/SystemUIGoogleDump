.class Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "TileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/TileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarginTileDecoration"
.end annotation


# instance fields
.field private mHalfMargin:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 701
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter$1;)V
    .locals 0

    .line 701
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 711
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 713
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 714
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    .line 715
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 716
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v1

    .line 718
    instance-of v2, p2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 719
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 721
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-eq v1, p2, :cond_2

    .line 724
    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;->mHalfMargin:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 725
    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 729
    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;->mHalfMargin:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 733
    :cond_3
    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;->mHalfMargin:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    return-void
.end method

.method public setHalfMargin(I)V
    .locals 0

    .line 705
    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;->mHalfMargin:I

    return-void
.end method
