.class Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;
.super Landroid/view/IDisplayWindowListener$Stub;
.source "DisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/common/DisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayWindowListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/common/DisplayController;


# direct methods
.method public static synthetic $r8$lambda$13mOopNnQoW8UqAS02v38-UC9oc(Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->lambda$onDisplayAdded$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$B-7e2BwvPJc-rkxPeEPH3nk4V9w(Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->lambda$onFixedRotationStarted$3(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$HJjDN75bMSW1WV8a3oC0dngvrKg(Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;ILandroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->lambda$onDisplayConfigurationChanged$1(ILandroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WYJSlC-J9UXuxZOkgax3tmnBHZg(Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->lambda$onDisplayRemoved$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_cHOcpi3lCuAs7ije-xYaV5QrH0(Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->lambda$onFixedRotationFinished$4(I)V

    return-void
.end method

.method private constructor <init>(Lcom/android/wm/shell/common/DisplayController;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->this$0:Lcom/android/wm/shell/common/DisplayController;

    invoke-direct {p0}, Landroid/view/IDisplayWindowListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayController$1;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;-><init>(Lcom/android/wm/shell/common/DisplayController;)V

    return-void
.end method

.method private synthetic lambda$onDisplayAdded$0(I)V
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->this$0:Lcom/android/wm/shell/common/DisplayController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->access$700(Lcom/android/wm/shell/common/DisplayController;I)V

    return-void
.end method

.method private synthetic lambda$onDisplayConfigurationChanged$1(ILandroid/content/res/Configuration;)V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->this$0:Lcom/android/wm/shell/common/DisplayController;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/common/DisplayController;->access$600(Lcom/android/wm/shell/common/DisplayController;ILandroid/content/res/Configuration;)V

    return-void
.end method

.method private synthetic lambda$onDisplayRemoved$2(I)V
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->this$0:Lcom/android/wm/shell/common/DisplayController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->access$500(Lcom/android/wm/shell/common/DisplayController;I)V

    return-void
.end method

.method private synthetic lambda$onFixedRotationFinished$4(I)V
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->this$0:Lcom/android/wm/shell/common/DisplayController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->access$300(Lcom/android/wm/shell/common/DisplayController;I)V

    return-void
.end method

.method private synthetic lambda$onFixedRotationStarted$3(II)V
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->this$0:Lcom/android/wm/shell/common/DisplayController;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/common/DisplayController;->access$400(Lcom/android/wm/shell/common/DisplayController;II)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->this$0:Lcom/android/wm/shell/common/DisplayController;

    invoke-static {v0}, Lcom/android/wm/shell/common/DisplayController;->access$200(Lcom/android/wm/shell/common/DisplayController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->this$0:Lcom/android/wm/shell/common/DisplayController;

    invoke-static {v0}, Lcom/android/wm/shell/common/DisplayController;->access$200(Lcom/android/wm/shell/common/DisplayController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl-$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl-$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;ILandroid/content/res/Configuration;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->this$0:Lcom/android/wm/shell/common/DisplayController;

    invoke-static {v0}, Lcom/android/wm/shell/common/DisplayController;->access$200(Lcom/android/wm/shell/common/DisplayController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFixedRotationFinished(I)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->this$0:Lcom/android/wm/shell/common/DisplayController;

    invoke-static {v0}, Lcom/android/wm/shell/common/DisplayController;->access$200(Lcom/android/wm/shell/common/DisplayController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl-$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFixedRotationStarted(II)V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->this$0:Lcom/android/wm/shell/common/DisplayController;

    invoke-static {v0}, Lcom/android/wm/shell/common/DisplayController;->access$200(Lcom/android/wm/shell/common/DisplayController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl-$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl-$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;II)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
