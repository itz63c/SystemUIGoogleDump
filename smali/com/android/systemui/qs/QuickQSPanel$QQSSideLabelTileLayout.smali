.class Lcom/android/systemui/qs/QuickQSPanel$QQSSideLabelTileLayout;
.super Lcom/android/systemui/qs/SideLabelTileLayout;
.source "QuickQSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickQSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QQSSideLabelTileLayout"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 338
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/SideLabelTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 339
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 340
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 341
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 343
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x4

    .line 344
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TileLayout;->setMaxColumns(I)Z

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 357
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$QQSSideLabelTileLayout;->updateResources()Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x2710

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/SideLabelTileLayout;->updateMaxRows(II)Z

    .line 366
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/TileLayout;->onMeasure(II)V

    return-void
.end method

.method public setExpansion(F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    const/4 v1, 0x4

    .line 395
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    move v1, p1

    .line 396
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 397
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 399
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    return-void
.end method

.method public setListening(ZLcom/android/internal/logging/UiEventLogger;)V
    .locals 4

    .line 371
    iget-boolean v0, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 372
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/TileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    if-eqz v0, :cond_1

    move p1, v1

    .line 375
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getNumVisibleTiles()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 377
    sget-object v2, Lcom/android/systemui/qs/QSEvent;->QQS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;

    .line 378
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsSpec()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    .line 377
    invoke-interface {p2, v2, v1, v3, v0}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public updateResources()Z
    .locals 2

    .line 349
    sget v0, Lcom/android/systemui/R$dimen;->qs_quick_tile_size:I

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeightResId:I

    .line 350
    invoke-super {p0}, Lcom/android/systemui/qs/SideLabelTileLayout;->updateResources()Z

    move-result v0

    const/4 v1, 0x2

    .line 351
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    return v0
.end method
