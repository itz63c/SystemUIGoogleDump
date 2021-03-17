.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/PendingIntent;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda11;->f$0:Landroid/app/PendingIntent;

    iput p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda11;->f$1:I

    iput p3, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda11;->f$2:I

    iput-object p4, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda11;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda11;->f$0:Landroid/app/PendingIntent;

    iget v1, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda11;->f$1:I

    iget v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda11;->f$2:I

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda11;->f$3:Landroid/os/Bundle;

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreen;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->$r8$lambda$dAjt5EcFmbWS78cRIiWXAmpHwn0(Landroid/app/PendingIntent;IILandroid/os/Bundle;Lcom/android/wm/shell/splitscreen/SplitScreen;)V

    return-void
.end method
