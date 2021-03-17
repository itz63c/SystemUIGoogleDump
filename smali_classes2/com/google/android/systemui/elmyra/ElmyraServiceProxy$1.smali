.class Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;
.super Lcom/google/android/systemui/elmyra/IElmyraService$Stub;
.source "ElmyraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/IElmyraService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerGestureListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->access$000(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;)V

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->access$100(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 76
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    invoke-static {v1}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->access$100(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;)Ljava/util/List;

    move-result-object v1

    .line 77
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;

    invoke-virtual {v1}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;->getListener()Lcom/google/android/systemui/elmyra/IElmyraServiceListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    invoke-static {v1}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->access$100(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 81
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/google/android/systemui/elmyra/IElmyraServiceListener;->setListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Elmyra/ElmyraServiceProxy"

    const-string p2, "Action isn\'t connected"

    .line 85
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public registerServiceListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->access$000(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;)V

    if-nez p1, :cond_0

    const-string p0, "Elmyra/ElmyraServiceProxy"

    const-string p1, "Binder token must not be null"

    .line 114
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->access$100(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->access$100(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    invoke-static {p1}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->access$100(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;

    invoke-virtual {p1}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;->unlinkToDeath()V

    .line 123
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    invoke-static {p0}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->access$100(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->access$100(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    .line 130
    invoke-static {p2}, Lcom/google/android/systemui/elmyra/IElmyraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/systemui/elmyra/IElmyraServiceListener;

    move-result-object p2

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;-><init>(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;Landroid/os/IBinder;Lcom/google/android/systemui/elmyra/IElmyraServiceListener;)V

    .line 128
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public triggerAction()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->access$000(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;)V

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->access$100(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 96
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    invoke-static {v1}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->access$100(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;)Ljava/util/List;

    move-result-object v1

    .line 97
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;

    invoke-virtual {v1}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$ElmyraServiceListener;->getListener()Lcom/google/android/systemui/elmyra/IElmyraServiceListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;

    invoke-static {v1}, Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;->access$100(Lcom/google/android/systemui/elmyra/ElmyraServiceProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 101
    :cond_0
    invoke-interface {v1}, Lcom/google/android/systemui/elmyra/IElmyraServiceListener;->triggerAction()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Elmyra/ElmyraServiceProxy"

    const-string v1, "Error launching assistant"

    .line 105
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method
