.class Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IElmyraServiceGestureListener.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public onGestureDetected()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.google.android.systemui.elmyra.IElmyraServiceGestureListener"

    .line 144
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 145
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 147
    invoke-static {}, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener$Stub;->getDefaultImpl()Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 148
    invoke-static {}, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener$Stub;->getDefaultImpl()Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;->onGestureDetected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 155
    throw p0
.end method

.method public onGestureProgress(FI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.google.android.systemui.elmyra.IElmyraServiceGestureListener"

    .line 124
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 126
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 129
    invoke-static {}, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener$Stub;->getDefaultImpl()Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 130
    invoke-static {}, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener$Stub;->getDefaultImpl()Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener;->onGestureProgress(FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 137
    throw p0
.end method
