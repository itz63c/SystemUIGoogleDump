.class public Lcom/android/systemui/qs/QuickQSPanel;
.super Lcom/android/systemui/qs/QSPanel;
.source "QuickQSPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QuickQSPanel$QQSSideLabelTileLayout;
    }
.end annotation


# instance fields
.field private mDisabledByPolicy:Z

.field private mMaxTiles:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$integer;->quick_qs_panel_max_columns:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 p2, 0x6

    .line 48
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mMaxTiles:I

    return-void
.end method

.method private applyBottomMargin(Landroid/view/View;)V
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->qs_header_tile_margin_bottom:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 61
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected closePanelEvent()Lcom/android/systemui/qs/QSEvent;
    .locals 0

    .line 183
    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QQS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method protected createHorizontalTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel;->createRegularTileLayout()Lcom/android/systemui/qs/TileLayout;

    move-result-object p0

    const/4 v0, 0x2

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileLayout;->setMaxColumns(I)Z

    return-object p0
.end method

.method public bridge synthetic createRegularTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel;->createRegularTileLayout()Lcom/android/systemui/qs/TileLayout;

    move-result-object p0

    return-object p0
.end method

.method public createRegularTileLayout()Lcom/android/systemui/qs/TileLayout;
    .locals 1

    .line 72
    new-instance v0, Lcom/android/systemui/qs/QuickQSPanel$QQSSideLabelTileLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QuickQSPanel$QQSSideLabelTileLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected displayMediaMarginsOnMedia()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected drawTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    .line 110
    instance-of v0, p2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    .line 112
    invoke-virtual {p2, v0}, Lcom/android/systemui/plugins/qs/QSTile$State;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    const/4 p2, 0x0

    .line 114
    iput-boolean p2, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    .line 115
    iput-boolean p2, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    move-object p2, v0

    .line 118
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->drawTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method protected getDumpableTag()Ljava/lang/String;
    .locals 0

    const-string p0, "QuickQSPanel"

    return-object p0
.end method

.method public getNumQuickTiles()I
    .locals 0

    .line 134
    iget p0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mMaxTiles:I

    return p0
.end method

.method initialize()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanel;->initialize()V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->applyBottomMargin(Landroid/view/View;)V

    return-void
.end method

.method protected needsDynamicRowsAndColumns()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "qs_show_brightness"

    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "0"

    .line 129
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected openPanelEvent()Lcom/android/systemui/qs/QSEvent;
    .locals 0

    .line 178
    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QQS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method public setBrightnessView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method setDisabledByPolicy(Z)V
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mDisabledByPolicy:Z

    if-eq p1, v0, :cond_1

    .line 154
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mDisabledByPolicy:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 155
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setMaxTiles(I)V
    .locals 1

    const/4 v0, 0x6

    .line 122
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mMaxTiles:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 167
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mDisabledByPolicy:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    move p1, v1

    .line 173
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected shouldShowDetail()Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected updatePadding()V
    .locals 0

    return-void
.end method
