.class Lcom/android/systemui/wmshell/WMShell$5;
.super Ljava/lang/Object;
.source "WMShell.java"

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;


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


# direct methods
.method public static synthetic $r8$lambda$ay8Wzv-MuXfkasTYP9KfO9j0V9k(Lcom/android/systemui/wmshell/WMShell$5;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wmshell/WMShell$5;->lambda$onStopFinished$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$rLhBg1Z988NAmXyKICnYt_hRmiA(Lcom/android/systemui/wmshell/WMShell$5;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wmshell/WMShell$5;->lambda$onStartFinished$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/wmshell/WMShell;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$5;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStartFinished$0()V
    .locals 2

    .line 241
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$5;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShell;->access$100(Lcom/android/systemui/wmshell/WMShell;)Lcom/android/systemui/model/SysUiState;

    move-result-object p0

    const/high16 v0, 0x10000

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object p0

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void
.end method

.method private synthetic lambda$onStopFinished$1()V
    .locals 2

    .line 249
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$5;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShell;->access$100(Lcom/android/systemui/wmshell/WMShell;)Lcom/android/systemui/model/SysUiState;

    move-result-object p0

    const/high16 v0, 0x10000

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object p0

    .line 250
    invoke-virtual {p0, v1}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void
.end method


# virtual methods
.method public onStartFinished(Landroid/graphics/Rect;)V
    .locals 1

    .line 240
    iget-object p1, p0, Lcom/android/systemui/wmshell/WMShell$5;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-static {p1}, Lcom/android/systemui/wmshell/WMShell;->access$000(Lcom/android/systemui/wmshell/WMShell;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$5-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShell$5-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wmshell/WMShell$5;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStopFinished(Landroid/graphics/Rect;)V
    .locals 1

    .line 248
    iget-object p1, p0, Lcom/android/systemui/wmshell/WMShell$5;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-static {p1}, Lcom/android/systemui/wmshell/WMShell;->access$000(Lcom/android/systemui/wmshell/WMShell;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$5-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShell$5-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wmshell/WMShell$5;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
