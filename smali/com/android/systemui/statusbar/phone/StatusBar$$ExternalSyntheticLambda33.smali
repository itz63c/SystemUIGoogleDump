.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field public final synthetic f$1:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field public final synthetic f$2:Landroid/app/PendingIntent;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Landroid/app/PendingIntent;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda33;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda33;->f$1:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda33;->f$2:Landroid/app/PendingIntent;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda33;->f$3:Z

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda33;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda33;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda33;->f$1:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda33;->f$2:Landroid/app/PendingIntent;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda33;->f$3:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda33;->f$4:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->$r8$lambda$Q5g1Uz1-I4yV6HG2Qq_oEzrucJk(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Landroid/app/PendingIntent;ZLjava/lang/Runnable;)V

    return-void
.end method
