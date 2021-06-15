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

    .line 885
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;->this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 889
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;->this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotView;->access$1100(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$SwipeDismissGestureListener;->this$1:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    invoke-static {p0}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->access$1000(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;)F

    move-result p0

    sub-float/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    const/4 p0, 0x1

    return p0
.end method
