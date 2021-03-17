.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/os/Bundle;

.field public final synthetic f$5:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda17;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda17;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda17;->f$2:I

    iput p4, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda17;->f$3:I

    iput-object p5, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda17;->f$4:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda17;->f$5:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda17;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda17;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda17;->f$2:I

    iget v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda17;->f$3:I

    iget-object v4, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda17;->f$4:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda17;->f$5:Landroid/os/UserHandle;

    move-object v6, p1

    check-cast v6, Lcom/android/wm/shell/splitscreen/SplitScreen;

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/OverviewProxyService$1;->$r8$lambda$0u54hE3unblpwkhhpjX6eulOsOU(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/wm/shell/splitscreen/SplitScreen;)V

    return-void
.end method
