.class final Lcom/android/systemui/qs/tiles/DeviceControlsTile$handleClick$1;
.super Ljava/lang/Object;
.source "DeviceControlsTile.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/DeviceControlsTile;->handleClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DeviceControlsTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DeviceControlsTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile$handleClick$1;->this$0:Lcom/android/systemui/qs/tiles/DeviceControlsTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile$handleClick$1;->this$0:Lcom/android/systemui/qs/tiles/DeviceControlsTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->access$createDialog(Lcom/android/systemui/qs/tiles/DeviceControlsTile;)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile$handleClick$1;->this$0:Lcom/android/systemui/qs/tiles/DeviceControlsTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->access$getControlsDialog$p(Lcom/android/systemui/qs/tiles/DeviceControlsTile;)Lcom/android/systemui/controls/ui/ControlsDialog;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile$handleClick$1;->this$0:Lcom/android/systemui/qs/tiles/DeviceControlsTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->access$getControlsComponent$p(Lcom/android/systemui/qs/tiles/DeviceControlsTile;)Lcom/android/systemui/controls/dagger/ControlsComponent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsUiController()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v1, "controlsComponent.getControlsUiController().get()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/systemui/controls/ui/ControlsUiController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/ui/ControlsDialog;->show(Lcom/android/systemui/controls/ui/ControlsUiController;)Lcom/android/systemui/controls/ui/ControlsDialog;

    :goto_0
    return-void
.end method
