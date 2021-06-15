.class final Lcom/android/systemui/qs/tiles/DeviceControlsTile$handleClick$1;
.super Ljava/lang/Object;
.source "DeviceControlsTile.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/DeviceControlsTile;->handleClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DeviceControlsTile;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/android/systemui/qs/tiles/DeviceControlsTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile$handleClick$1;->$view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile$handleClick$1;->this$0:Lcom/android/systemui/qs/tiles/DeviceControlsTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile$handleClick$1;->this$0:Lcom/android/systemui/qs/tiles/DeviceControlsTile;

    .line 100
    new-instance v2, Landroid/content/ComponentName;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->access$getMContext$p(Lcom/android/systemui/qs/tiles/DeviceControlsTile;)Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/android/systemui/controls/ui/ControlsActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "extra_animate"

    const/4 v2, 0x1

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile$handleClick$1;->$view:Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 106
    :cond_0
    sget-object v3, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->Companion:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;

    invoke-virtual {v3, v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;->fromView(Landroid/view/View;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    move-result-object v1

    .line 108
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile$handleClick$1;->this$0:Lcom/android/systemui/qs/tiles/DeviceControlsTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->access$getMActivityStarter$p(Lcom/android/systemui/qs/tiles/DeviceControlsTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p0

    invoke-interface {p0, v0, v2, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-void
.end method
