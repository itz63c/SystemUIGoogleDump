.class Lcom/google/android/systemui/columbus/IColumbusService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IColumbusService.java"

# interfaces
.implements Lcom/google/android/systemui/columbus/IColumbusService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/IColumbusService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/google/android/systemui/columbus/IColumbusService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/android/systemui/columbus/IColumbusService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/google/android/systemui/columbus/IColumbusService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public registerServiceListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.google.android.systemui.columbus.IColumbusService"

    .line 148
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 150
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 151
    iget-object p0, p0, Lcom/google/android/systemui/columbus/IColumbusService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 153
    invoke-static {}, Lcom/google/android/systemui/columbus/IColumbusService$Stub;->getDefaultImpl()Lcom/google/android/systemui/columbus/IColumbusService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 154
    invoke-static {}, Lcom/google/android/systemui/columbus/IColumbusService$Stub;->getDefaultImpl()Lcom/google/android/systemui/columbus/IColumbusService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/android/systemui/columbus/IColumbusService;->registerServiceListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    throw p0
.end method
