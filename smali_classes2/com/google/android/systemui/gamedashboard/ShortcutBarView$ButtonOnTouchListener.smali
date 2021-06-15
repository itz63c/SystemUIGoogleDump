.class Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ButtonOnTouchListener;
.super Ljava/lang/Object;
.source "ShortcutBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/gamedashboard/ShortcutBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonOnTouchListener"
.end annotation


# instance fields
.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ButtonOnTouchListener;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ButtonOnTouchListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ButtonOnTouchListener;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1400(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ButtonOnTouchListener;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1900(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ButtonOnTouchListener;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1900(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ButtonOnTouchListener;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    .line 510
    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$2000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ButtonOnTouchListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 513
    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ButtonOnTouchListener;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1800(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View$OnTouchListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
