.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/ComponentName;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentName;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda12;->f$0:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda12;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda12;->f$0:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1-$$ExternalSyntheticLambda12;->f$1:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/wm/shell/pip/Pip;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->$r8$lambda$VkExU21QimYW0WUn738HohpY1Wk(Landroid/content/ComponentName;Landroid/graphics/Rect;Lcom/android/wm/shell/pip/Pip;)V

    return-void
.end method
