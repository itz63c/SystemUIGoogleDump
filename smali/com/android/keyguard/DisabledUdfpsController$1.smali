.class Lcom/android/keyguard/DisabledUdfpsController$1;
.super Ljava/lang/Object;
.source "DisabledUdfpsController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/DisabledUdfpsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/DisabledUdfpsController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/DisabledUdfpsController;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/keyguard/DisabledUdfpsController$1;->this$0:Lcom/android/keyguard/DisabledUdfpsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/keyguard/DisabledUdfpsController$1;->this$0:Lcom/android/keyguard/DisabledUdfpsController;

    invoke-static {p0}, Lcom/android/keyguard/DisabledUdfpsController;->access$000(Lcom/android/keyguard/DisabledUdfpsController;)Lcom/android/keyguard/KeyguardViewController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardViewController;->showBouncer(Z)V

    return-void
.end method
