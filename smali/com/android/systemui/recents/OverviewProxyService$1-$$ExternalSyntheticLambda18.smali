.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda18;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda18;->f$0:Z

    check-cast p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->$r8$lambda$R0FOT2MMwmgAsfv9LuuxAMOz6JA(ZLcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V

    return-void
.end method
