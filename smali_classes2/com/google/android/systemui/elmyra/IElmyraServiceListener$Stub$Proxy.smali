.class Lcom/google/android/systemui/elmyra/IElmyraServiceListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IElmyraServiceListener.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/IElmyraServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/IElmyraServiceListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/google/android/systemui/elmyra/IElmyraServiceListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/systemui/elmyra/IElmyraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/IElmyraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public setListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.google.android.systemui.elmyra.IElmyraServiceListener"

    .line 116
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 118
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 119
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/IElmyraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 121
    invoke-static {}, Lcom/google/android/systemui/elmyra/IElmyraServiceListener$Stub;->getDefaultImpl()Lcom/google/android/systemui/elmyra/IElmyraServiceListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 122
    invoke-static {}, Lcom/google/android/systemui/elmyra/IElmyraServiceListener$Stub;->getDefaultImpl()Lcom/google/android/systemui/elmyra/IElmyraServiceListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/android/systemui/elmyra/IElmyraServiceListener;->setListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 129
    throw p0
.end method

.method public triggerAction()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.google.android.systemui.elmyra.IElmyraServiceListener"

    .line 136
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 137
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/IElmyraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 139
    invoke-static {}, Lcom/google/android/systemui/elmyra/IElmyraServiceListener$Stub;->getDefaultImpl()Lcom/google/android/systemui/elmyra/IElmyraServiceListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 140
    invoke-static {}, Lcom/google/android/systemui/elmyra/IElmyraServiceListener$Stub;->getDefaultImpl()Lcom/google/android/systemui/elmyra/IElmyraServiceListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/systemui/elmyra/IElmyraServiceListener;->triggerAction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 147
    throw p0
.end method
