.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lcom/android/systemui/plugins/ActivityStarter$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda31;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda31;->f$1:Landroid/content/Intent;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda31;->f$2:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda31;->f$3:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda31;->f$4:Z

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda31;->f$5:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda31;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda31;->f$1:Landroid/content/Intent;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda31;->f$2:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda31;->f$3:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda31;->f$4:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda31;->f$5:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->$r8$lambda$MHbGf2E-ydJ9WWIJZa9kMhUu6IM(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    return-void
.end method