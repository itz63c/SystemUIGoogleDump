.class Lcom/android/systemui/biometrics/UdfpsKeyguardView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UdfpsKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/UdfpsKeyguardView;->animateUdfpsBouncer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardView;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView$1;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView$1;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-static {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->access$000(Lcom/android/systemui/biometrics/UdfpsKeyguardView;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
