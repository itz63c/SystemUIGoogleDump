.class public abstract Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub;
.super Landroid/os/Binder;
.source "IColumbusServiceListener.java"

# interfaces
.implements Lcom/google/android/systemui/columbus/IColumbusServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/IColumbusServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.systemui.columbus.IColumbusServiceListener"

    .line 31
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/systemui/columbus/IColumbusServiceListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.systemui.columbus.IColumbusServiceListener"

    .line 42
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    instance-of v1, v0, Lcom/google/android/systemui/columbus/IColumbusServiceListener;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Lcom/google/android/systemui/columbus/IColumbusServiceListener;

    return-object v0

    .line 46
    :cond_1
    new-instance v0, Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/google/android/systemui/columbus/IColumbusServiceListener;
    .locals 1

    .line 138
    sget-object v0, Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub$Proxy;->sDefaultImpl:Lcom/google/android/systemui/columbus/IColumbusServiceListener;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.google.android.systemui.columbus.IColumbusServiceListener"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_0

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 67
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 72
    invoke-interface {p0, p1, p2}, Lcom/google/android/systemui/columbus/IColumbusServiceListener;->setListener(Landroid/os/IBinder;Landroid/os/IBinder;)V

    return v0

    .line 59
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
