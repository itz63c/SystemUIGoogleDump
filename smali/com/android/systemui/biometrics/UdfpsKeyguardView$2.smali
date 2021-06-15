.class Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UdfpsKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/UdfpsKeyguardView;->animateAwayUdfpsBouncer(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardView;

.field final synthetic val$onEndAnimation:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardView;Ljava/lang/Runnable;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;->val$onEndAnimation:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 233
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-static {p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->access$000(Lcom/android/systemui/biometrics/UdfpsKeyguardView;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;->val$onEndAnimation:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 235
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
