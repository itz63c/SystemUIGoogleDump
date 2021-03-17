.class Lcom/android/systemui/wmshell/WMShell$7;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "WMShell.java"


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
.method constructor <init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$7;->this$0:Lcom/android/systemui/wmshell/WMShell;

    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShell$7;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardBouncerChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$7;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    invoke-interface {p0}, Lcom/android/wm/shell/onehanded/OneHanded;->stopOneHanded()V

    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$7;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    invoke-interface {p0}, Lcom/android/wm/shell/onehanded/OneHanded;->stopOneHanded()V

    return-void
.end method
