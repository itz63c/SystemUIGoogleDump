.class public Lcom/android/systemui/qs/SideLabelTileLayout;
.super Lcom/android/systemui/qs/TileLayout;
.source "SideLabelTileLayout.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setShowLabels(Z)V
    .locals 0

    return-void
.end method

.method public updateResources()Z
    .locals 5

    .line 26
    invoke-super {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    move-result v0

    const/4 v1, 0x2

    .line 27
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mResourceColumns:I

    const/4 v1, 0x4

    .line 28
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    .line 29
    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    int-to-double v1, v1

    const-wide v3, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    .line 30
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    .line 31
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_quick_tile_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mMaxCellHeight:I

    return v0
.end method
