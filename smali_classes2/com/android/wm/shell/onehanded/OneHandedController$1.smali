.class Lcom/android/wm/shell/onehanded/OneHandedController$1;
.super Ljava/lang/Object;
.source "OneHandedController.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/onehanded/OneHandedController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedController;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 109
    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$100(Lcom/android/wm/shell/onehanded/OneHandedController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeTimeout(Landroid/content/ContentResolver;)I

    move-result p1

    .line 110
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$200(Lcom/android/wm/shell/onehanded/OneHandedController;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    mul-int/lit16 p1, p1, 0x3e8

    const/4 v1, 0x4

    .line 111
    invoke-virtual {v0, p1, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p1

    .line 114
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$300(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    move-result-object p0

    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->setTimeout(I)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$300(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$1;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 117
    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->access$100(Lcom/android/wm/shell/onehanded/OneHandedController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeTimeout(Landroid/content/ContentResolver;)I

    move-result p0

    .line 116
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->setTimeout(I)V

    :goto_0
    return-void
.end method
