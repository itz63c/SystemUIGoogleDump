.class Lcom/google/android/systemui/assist/uihints/ScrimController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/uihints/ScrimController;->setRelativeAlpha(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/google/android/systemui/assist/uihints/ScrimController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/uihints/ScrimController;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/ScrimController$1;->this$0:Lcom/google/android/systemui/assist/uihints/ScrimController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 241
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/ScrimController$1;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 245
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    .line 246
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/ScrimController$1;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 251
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 252
    iget-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/ScrimController$1;->mCancelled:Z

    if-eqz p1, :cond_0

    return-void

    .line 255
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController$1;->this$0:Lcom/google/android/systemui/assist/uihints/ScrimController;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/uihints/ScrimController;->access$000(Lcom/google/android/systemui/assist/uihints/ScrimController;I)V

    return-void
.end method
