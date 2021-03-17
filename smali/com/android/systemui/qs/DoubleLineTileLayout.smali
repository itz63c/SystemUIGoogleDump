.class public final Lcom/android/systemui/qs/DoubleLineTileLayout;
.super Landroid/view/ViewGroup;
.source "DoubleLineTileLayout.kt"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/DoubleLineTileLayout$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDoubleLineTileLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DoubleLineTileLayout.kt\ncom/android/systemui/qs/DoubleLineTileLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,164:1\n1819#2,2:165\n1819#2,2:167\n*E\n*S KotlinDebug\n*F\n+ 1 DoubleLineTileLayout.kt\ncom/android/systemui/qs/DoubleLineTileLayout\n*L\n69#1,2:165\n115#1,2:167\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/qs/DoubleLineTileLayout$Companion;


# instance fields
.field private _listening:Z

.field private cellMarginHorizontal:I

.field private cellMarginVertical:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private smallTileSize:I

.field private tilesToShow:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/DoubleLineTileLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/DoubleLineTileLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/qs/DoubleLineTileLayout;->Companion:Lcom/android/systemui/qs/DoubleLineTileLayout$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 47
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/qs/DoubleLineTileLayout;->updateResources()Z

    return-void
.end method

.method private final calculateMaxColumns(I)I
    .locals 2

    .line 124
    iget v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->smallTileSize:I

    iget p0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->cellMarginHorizontal:I

    add-int v1, v0, p0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-int/2addr p1, v0

    add-int/2addr v0, p0

    .line 127
    div-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final getLeftForColumn(II)I
    .locals 1

    mul-int/2addr p1, p2

    int-to-float p1, p1

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    .line 160
    iget p0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->smallTileSize:I

    int-to-float p0, p0

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private final getTopBottomRow()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->smallTileSize:I

    iget p0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->cellMarginVertical:I

    add-int/2addr v0, p0

    return v0
.end method

.method private final getTwoLineHeight()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->smallTileSize:I

    mul-int/lit8 v0, v0, 0x2

    iget p0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->cellMarginVertical:I

    mul-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 2

    const-string v0, "tile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v1, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->_listening:Z

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/DoubleLineTileLayout;->addTileView(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    return-void
.end method

.method protected final addTileView(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 1

    const-string v0, "tile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getNumVisibleTiles()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->tilesToShow:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getOffsetTop(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)I
    .locals 0

    .line 74
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/qs/DoubleLineTileLayout;->updateResources()Z

    .line 106
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/qs/DoubleLineTileLayout;->updateResources()Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    sub-int/2addr p4, p2

    .line 132
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    .line 133
    invoke-direct {p0, p4}, Lcom/android/systemui/qs/DoubleLineTileLayout;->calculateMaxColumns(I)I

    move-result p1

    .line 134
    iget-object p2, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    mul-int/lit8 p2, p1, 0x2

    .line 139
    iput p2, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->tilesToShow:I

    .line 141
    div-int/2addr p4, p1

    .line 143
    iget-object p2, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p3, p2, -0x1

    const/high16 p5, -0x80000000

    if-eq p2, p5, :cond_5

    if-ltz p3, :cond_5

    const/4 p2, 0x0

    move p5, p2

    :goto_0
    add-int/lit8 v0, p5, 0x1

    .line 144
    iget-object v1, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 145
    iget v2, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->tilesToShow:I

    if-lt p5, v2, :cond_1

    const/16 p5, 0x8

    .line 146
    invoke-virtual {v1, p5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 148
    :cond_1
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-lez p5, :cond_2

    .line 149
    iget-object v2, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, p5, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/plugins/qs/QSTileView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    .line 150
    :cond_2
    rem-int v2, p5, p1

    .line 151
    invoke-direct {p0, v2, p4}, Lcom/android/systemui/qs/DoubleLineTileLayout;->getLeftForColumn(II)I

    move-result v2

    if-ge p5, p1, :cond_3

    move p5, p2

    goto :goto_1

    .line 152
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/DoubleLineTileLayout;->getTopBottomRow()I

    move-result p5

    .line 153
    :goto_1
    iget v3, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->smallTileSize:I

    add-int v4, v2, v3

    add-int/2addr v3, p5

    invoke-virtual {v1, v2, p5, v4, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    :goto_2
    if-le v0, p3, :cond_4

    goto :goto_3

    :cond_4
    move p5, v0

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 115
    iget-object p2, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 1819
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 116
    iget-object v0, v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget v1, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->smallTileSize:I

    invoke-static {v1}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->smallTileSize:I

    invoke-static {v2}, Lcom/android/systemui/qs/TileLayout;->exactly(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->measure(II)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/DoubleLineTileLayout;->getTwoLineHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    .line 120
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeAllViews()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 69
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 2

    const-string v0, "tile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 65
    iget-object p1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setListening(ZLcom/android/internal/logging/UiEventLogger;)V
    .locals 5

    const-string v0, "uiEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->_listening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 88
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->_listening:Z

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 90
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1, p0, p1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/qs/DoubleLineTileLayout;->getNumVisibleTiles()I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_3

    if-ltz v0, :cond_3

    const/4 p1, 0x0

    move v1, p1

    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 94
    iget-object v3, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 96
    sget-object v3, Lcom/android/systemui/qs/QSEvent;->QQS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsSpec()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    .line 95
    invoke-interface {p2, v3, p1, v4, v1}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    if-le v2, v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public updateResources()Z
    .locals 2

    .line 77
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    sget v1, Lcom/android/systemui/R$dimen;->qs_quick_tile_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->smallTileSize:I

    .line 79
    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_margin_horizontal_two_line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->cellMarginHorizontal:I

    .line 80
    sget v1, Lcom/android/systemui/R$dimen;->new_qs_vertical_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/DoubleLineTileLayout;->cellMarginVertical:I

    .line 82
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 p0, 0x0

    return p0
.end method
