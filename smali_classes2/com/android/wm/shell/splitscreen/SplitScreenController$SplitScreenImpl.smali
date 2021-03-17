.class Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;
.super Ljava/lang/Object;
.source "SplitScreenController.java"

# interfaces
.implements Lcom/android/wm/shell/splitscreen/SplitScreen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/SplitScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplitScreenImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method public static synthetic $r8$lambda$FXt6frRlBSPn6HHBZOXyTxdhsEM(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->lambda$exitSplitScreen$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$HPOqgEzLO0gLhLsLR4QO3f8xbVM(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->lambda$registerSplitScreenListener$10(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rd-_1P_fpVkVuOhRYS8yiCUsN7Q(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;IIILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->lambda$startTask$12(IIILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SJ0S9GN4WMBydVK8JcsekV7AArA(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->lambda$exitSplitScreenOnHide$8(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$SgHLaVoae9kNRIWhfPJhpcHtMRc(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Landroid/app/PendingIntent;IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->lambda$startIntent$14(Landroid/app/PendingIntent;IILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$etwFKgQxmcg0HNtmrRdQ6oUk6Pk(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->lambda$setSideStageVisibility$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$fkjxEMpwtswZImxzji4W-4RX8x8(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->lambda$startShortcut$13(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m-T0NMGo5ZNYRE90FzUDikzHfhI(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->lambda$unregisterSplitScreenListener$11(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/splitscreen/SplitScreenController$1;)V
    .locals 0

    .line 240
    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method private synthetic lambda$exitSplitScreen$7()V
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitSplitScreen()V

    return-void
.end method

.method private synthetic lambda$exitSplitScreenOnHide$8(Z)V
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitSplitScreenOnHide(Z)V

    return-void
.end method

.method private synthetic lambda$registerSplitScreenListener$10(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    return-void
.end method

.method private synthetic lambda$setSideStageVisibility$5(Z)V
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setSideStageVisibility(Z)V

    return-void
.end method

.method private synthetic lambda$startIntent$14(Landroid/app/PendingIntent;IILandroid/os/Bundle;)V
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/app/PendingIntent;IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$startShortcut$13(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 7

    .line 342
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startShortcut(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$startTask$12(IIILandroid/os/Bundle;)V
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTask(IIILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$unregisterSplitScreenListener$11(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    return-void
.end method


# virtual methods
.method public exitSplitScreen()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->access$100(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public exitSplitScreenOnHide(Z)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->access$100(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Z)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->access$100(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSideStageVisibility(Z)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->access$100(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Z)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startIntent(Landroid/app/PendingIntent;IILandroid/os/Bundle;)V
    .locals 8

    .line 350
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->access$100(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v7, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Landroid/app/PendingIntent;IILandroid/os/Bundle;)V

    invoke-interface {v0, v7}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 10

    move-object v1, p0

    .line 341
    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->access$100(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v8

    new-instance v9, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda5;

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Ljava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;Landroid/os/UserHandle;)V

    invoke-interface {v8, v9}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startTask(IIILandroid/os/Bundle;)V
    .locals 8

    .line 333
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->access$100(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v7, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;IIILandroid/os/Bundle;)V

    invoke-interface {v0, v7}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->access$100(Lcom/android/wm/shell/splitscreen/SplitScreenController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl-$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
