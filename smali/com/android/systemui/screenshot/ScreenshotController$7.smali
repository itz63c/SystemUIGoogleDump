.class Lcom/android/systemui/screenshot/ScreenshotController$7;
.super Ljava/lang/Object;
.source "ScreenshotController.java"

# interfaces
.implements Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ScreenshotController;->lambda$getActionTransitionSupplier$12()Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotController;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$7;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideSharedElements()V
    .locals 0

    .line 852
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$7;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    invoke-static {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->access$200(Lcom/android/systemui/screenshot/ScreenshotController;)V

    return-void
.end method

.method public isReturnTransitionAllowed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method
