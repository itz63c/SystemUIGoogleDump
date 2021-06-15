.class Landroid/frameworks/stats/IStats$Stub$Proxy;
.super Ljava/lang/Object;
.source "IStats.java"

# interfaces
.implements Landroid/frameworks/stats/IStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/frameworks/stats/IStats$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/frameworks/stats/IStats;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Landroid/frameworks/stats/IStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/frameworks/stats/IStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public reportVendorAtom(Landroid/frameworks/stats/VendorAtom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 117
    :try_start_0
    sget-object v1, Landroid/frameworks/stats/IStats;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-virtual {p1, v0, v1}, Landroid/frameworks/stats/VendorAtom;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    :goto_0
    iget-object p0, p0, Landroid/frameworks/stats/IStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 127
    invoke-static {}, Landroid/frameworks/stats/IStats$Stub;->getDefaultImpl()Landroid/frameworks/stats/IStats;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 128
    invoke-static {}, Landroid/frameworks/stats/IStats$Stub;->getDefaultImpl()Landroid/frameworks/stats/IStats;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/frameworks/stats/IStats;->reportVendorAtom(Landroid/frameworks/stats/VendorAtom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 135
    throw p0
.end method
