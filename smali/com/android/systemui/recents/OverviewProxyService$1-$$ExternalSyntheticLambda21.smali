.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda21;->f$0:Z

    iput p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda21;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda21;->f$0:Z

    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda21;->f$1:I

    check-cast p1, Lcom/android/wm/shell/pip/Pip;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->$r8$lambda$lTKXI_Xm0XWKE2iaK11eulRX8z4(ZILcom/android/wm/shell/pip/Pip;)V

    return-void
.end method
