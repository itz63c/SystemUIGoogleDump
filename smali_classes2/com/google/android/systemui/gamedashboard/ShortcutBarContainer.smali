.class public Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;
.super Landroid/widget/LinearLayout;
.source "ShortcutBarContainer.java"


# instance fields
.field private final mOvalBgPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;->mOvalBgPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    const p0, 0x1010030

    .line 40
    invoke-static {p1, p0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    .line 41
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p1

    .line 42
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    const/16 v1, 0xc8

    .line 41
    invoke-static {v1, p1, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    .line 43
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 48
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    .line 51
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v7, v4, v0

    .line 53
    iget-object v8, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;->mOvalBgPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method
