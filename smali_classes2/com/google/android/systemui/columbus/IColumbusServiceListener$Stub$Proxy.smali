.class Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IColumbusServiceListener.java"

# interfaces
.implements Lcom/google/android/systemui/columbus/IColumbusServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/google/android/systemui/columbus/IColumbusServiceListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public setListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.google.android.systemui.columbus.IColumbusServiceListener"

    .line 106
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 108
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 109
    iget-object p0, p0, Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 111
    invoke-static {}, Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub;->getDefaultImpl()Lcom/google/android/systemui/columbus/IColumbusServiceListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 112
    invoke-static {}, Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub;->getDefaultImpl()Lcom/google/android/systemui/columbus/IColumbusServiceListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/android/systemui/columbus/IColumbusServiceListener;->setListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 119
    throw p0
.end method
