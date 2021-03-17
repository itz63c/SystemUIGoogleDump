.class Lcom/android/keyguard/DisabledUdfpsController$2;
.super Ljava/lang/Object;
.source "DisabledUdfpsController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


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

    .line 120
    iput-object p1, p0, Lcom/android/keyguard/DisabledUdfpsController$2;->this$0:Lcom/android/keyguard/DisabledUdfpsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDozingChanged(Z)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/DisabledUdfpsController$2;->this$0:Lcom/android/keyguard/DisabledUdfpsController;

    invoke-static {v0, p1}, Lcom/android/keyguard/DisabledUdfpsController;->access$302(Lcom/android/keyguard/DisabledUdfpsController;Z)Z

    .line 130
    iget-object p0, p0, Lcom/android/keyguard/DisabledUdfpsController$2;->this$0:Lcom/android/keyguard/DisabledUdfpsController;

    invoke-static {p0}, Lcom/android/keyguard/DisabledUdfpsController;->access$200(Lcom/android/keyguard/DisabledUdfpsController;)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/DisabledUdfpsController$2;->this$0:Lcom/android/keyguard/DisabledUdfpsController;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/keyguard/DisabledUdfpsController;->access$102(Lcom/android/keyguard/DisabledUdfpsController;Z)Z

    .line 124
    iget-object p0, p0, Lcom/android/keyguard/DisabledUdfpsController$2;->this$0:Lcom/android/keyguard/DisabledUdfpsController;

    invoke-static {p0}, Lcom/android/keyguard/DisabledUdfpsController;->access$200(Lcom/android/keyguard/DisabledUdfpsController;)V

    return-void
.end method
