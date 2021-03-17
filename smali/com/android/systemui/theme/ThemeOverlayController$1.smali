.class Lcom/android/systemui/theme/ThemeOverlayController$1;
.super Landroid/content/BroadcastReceiver;
.source "ThemeOverlayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/theme/ThemeOverlayController;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/theme/ThemeOverlayController;


# direct methods
.method constructor <init>(Lcom/android/systemui/theme/ThemeOverlayController;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$1;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 153
    invoke-static {}, Lcom/android/systemui/theme/ThemeOverlayController;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ThemeOverlayController"

    const-string p2, "Updating overlays for user switch / profile added."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$1;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    invoke-static {p0}, Lcom/android/systemui/theme/ThemeOverlayController;->access$100(Lcom/android/systemui/theme/ThemeOverlayController;)V

    return-void
.end method
