.class Lcom/android/systemui/screenshot/ScreenshotView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScreenshotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ScreenshotView;->animateDismissal(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotView;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotView;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$4;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 613
    iput-boolean p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$4;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 617
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    .line 621
    iput-boolean p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$4;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 626
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 627
    iget-boolean p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$4;->mCancelled:Z

    if-nez p1, :cond_0

    .line 631
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$4;->this$0:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->access$700(Lcom/android/systemui/screenshot/ScreenshotView;)Lcom/android/systemui/screenshot/ScreenshotView$ScreenshotViewCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/screenshot/ScreenshotView$ScreenshotViewCallback;->onDismiss()V

    :cond_0
    return-void
.end method
