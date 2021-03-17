.class public final synthetic Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition-$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:I

.field public final synthetic f$3:F

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(FLandroid/view/View;IFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition-$$ExternalSyntheticLambda0;->f$0:F

    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition-$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput p3, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition-$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition-$$ExternalSyntheticLambda0;->f$3:F

    iput p5, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition-$$ExternalSyntheticLambda0;->f$4:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget v0, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition-$$ExternalSyntheticLambda0;->f$0:F

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition-$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget v2, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition-$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition-$$ExternalSyntheticLambda0;->f$3:F

    iget v4, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition-$$ExternalSyntheticLambda0;->f$4:F

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->$r8$lambda$00V9hRLGfMWb0mFtNfFonfhbToQ(FLandroid/view/View;IFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
