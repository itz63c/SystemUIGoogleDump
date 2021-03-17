.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView;
.super Landroid/widget/FrameLayout;
.source "ShadowView.java"


# instance fields
.field private backgroundCornerRadius:F

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private highlight:Landroid/graphics/RectF;

.field private final highlightCornerRadius:F

.field private final highlightPaint:Landroid/graphics/Paint;

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView;->highlight:Landroid/graphics/RectF;

    .line 21
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView;->tmpRectF:Landroid/graphics/RectF;

    .line 22
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView;->tmpRect:Landroid/graphics/Rect;

    .line 42
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView;->backgroundPaint:Landroid/graphics/Paint;

    .line 43
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1d

    if-lt p3, p4, :cond_0

    .line 45
    sget v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/R$color;->default_gleam_background_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    :cond_0
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView;->highlightPaint:Landroid/graphics/Paint;

    if-lt p3, p4, :cond_1

    .line 49
    sget p3, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/R$color;->default_gleam_highlight_color:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/R$dimen;->selection_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView;->highlightCornerRadius:F

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method final synthetic lambda$onAttachedToWindow$0$ShadowView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Handle touch for the background scrim."

    .line 79
    invoke-static {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/utils/LogUtils;->i(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 74
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 75
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView$$Lambda$0;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 88
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 57
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView;->tmpRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView;->tmpRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView;->backgroundCornerRadius:F

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView;->highlight:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView;->highlightCornerRadius:F

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ShadowView;->highlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
