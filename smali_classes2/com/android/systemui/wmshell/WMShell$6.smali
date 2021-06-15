.class Lcom/android/systemui/wmshell/WMShell$6;
.super Ljava/lang/Object;
.source "WMShell.java"

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedGestureHandler$OneHandedGestureEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wmshell/WMShell;->initOneHanded(Lcom/android/wm/shell/onehanded/OneHanded;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wmshell/WMShell;

.field final synthetic val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;


# direct methods
.method public static synthetic $r8$lambda$F8j_bR74A8HBc37GhYt8Ib2tuaA(Lcom/android/systemui/wmshell/WMShell$6;Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wmshell/WMShell$6;->lambda$onStop$1(Lcom/android/wm/shell/onehanded/OneHanded;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ldrAcrR9NWJGW3fRIneMpFouraQ(Lcom/android/systemui/wmshell/WMShell$6;Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wmshell/WMShell$6;->lambda$onStart$0(Lcom/android/wm/shell/onehanded/OneHanded;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$6;->this$0:Lcom/android/systemui/wmshell/WMShell;

    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShell$6;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStart$0(Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 1

    .line 267
    invoke-interface {p1}, Lcom/android/wm/shell/onehanded/OneHanded;->isOneHandedEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-interface {p1}, Lcom/android/wm/shell/onehanded/OneHanded;->startOneHanded()V

    goto :goto_0

    .line 269
    :cond_0
    invoke-interface {p1}, Lcom/android/wm/shell/onehanded/OneHanded;->isSwipeToNotificationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 270
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$6;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShell;->access$200(Lcom/android/systemui/wmshell/WMShell;)Lcom/android/systemui/statusbar/CommandQueue;

    move-result-object p0

    const/16 p1, 0x119

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/CommandQueue;->handleSystemKey(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onStop$1(Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 1

    .line 278
    invoke-interface {p1}, Lcom/android/wm/shell/onehanded/OneHanded;->isOneHandedEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 280
    invoke-interface {p1, p0}, Lcom/android/wm/shell/onehanded/OneHanded;->stopOneHanded(I)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-interface {p1}, Lcom/android/wm/shell/onehanded/OneHanded;->isSwipeToNotificationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 283
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$6;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShell;->access$200(Lcom/android/systemui/wmshell/WMShell;)Lcom/android/systemui/statusbar/CommandQueue;

    move-result-object p0

    const/16 p1, 0x118

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/CommandQueue;->handleSystemKey(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell$6;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShell;->access$000(Lcom/android/systemui/wmshell/WMShell;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell$6;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    new-instance v2, Lcom/android/systemui/wmshell/WMShell$6$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/wmshell/WMShell$6$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wmshell/WMShell$6;Lcom/android/wm/shell/onehanded/OneHanded;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell$6;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-static {v0}, Lcom/android/systemui/wmshell/WMShell;->access$000(Lcom/android/systemui/wmshell/WMShell;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell$6;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    new-instance v2, Lcom/android/systemui/wmshell/WMShell$6$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/wmshell/WMShell$6$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wmshell/WMShell$6;Lcom/android/wm/shell/onehanded/OneHanded;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
