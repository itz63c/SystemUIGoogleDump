.class Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScreenshotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwipeDismissGestureListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;)V
    .locals 0

    .line 845
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;->this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 861
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;->this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$300(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/HorizontalScrollView;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;->this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    invoke-static {p3}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->access$1200(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/HorizontalScrollView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 862
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;->this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->access$1300(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;)Z

    move-result p1

    const/4 p3, 0x1

    if-nez p1, :cond_0

    .line 863
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;->this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->access$1200(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p4

    float-to-int p4, p4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, p4, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 864
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;->this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->access$1402(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;F)F

    .line 865
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;->this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    invoke-static {p0, p3}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->access$1302(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;Z)Z

    goto :goto_0

    .line 868
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object p4, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;->this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    invoke-static {p4}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->access$1400(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;)F

    move-result p4

    sub-float/2addr p1, p4

    .line 869
    iget-object p4, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;->this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    invoke-static {p4}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->access$1500(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;->this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    invoke-static {p4}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->access$1600(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;)F

    move-result p4

    mul-float/2addr p4, p1

    const/4 v0, 0x0

    cmpl-float p4, p4, v0

    if-gtz p4, :cond_4

    :cond_1
    iget-object p4, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;->this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    .line 870
    invoke-static {p4}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->access$1200(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;)Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;->this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    iget-object p4, p4, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 871
    invoke-static {p4}, Lcom/android/systemui/screenshot/ScreenshotView;->access$300(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/HorizontalScrollView;

    move-result-object p4

    float-to-int v0, p1

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p4, v0}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result p4

    if-nez p4, :cond_2

    goto :goto_1

    .line 877
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;->this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->access$1402(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;F)F

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0

    .line 872
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;->this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    invoke-static {p2, p3}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->access$1502(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;Z)Z

    .line 873
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;->this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    invoke-static {p2, p1}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->access$1602(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;F)F

    .line 874
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;->this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$1700(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;->this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    invoke-static {p0}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->access$1600(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    return p3
.end method
