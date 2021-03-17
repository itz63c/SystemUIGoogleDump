.class Lcom/android/systemui/shared/recents/ISplitScreenListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISplitScreenListener.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/ISplitScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/ISplitScreenListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/systemui/shared/recents/ISplitScreenListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/systemui/shared/recents/ISplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/shared/recents/ISplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public onStagePositionChanged(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.shared.recents.ISplitScreenListener"

    .line 109
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object p0, p0, Lcom/android/systemui/shared/recents/ISplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 114
    invoke-static {}, Lcom/android/systemui/shared/recents/ISplitScreenListener$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/ISplitScreenListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 115
    invoke-static {}, Lcom/android/systemui/shared/recents/ISplitScreenListener$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/ISplitScreenListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/ISplitScreenListener;->onStagePositionChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 122
    throw p0
.end method

.method public onTaskStageChanged(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.shared.recents.ISplitScreenListener"

    .line 128
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object p0, p0, Lcom/android/systemui/shared/recents/ISplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 133
    invoke-static {}, Lcom/android/systemui/shared/recents/ISplitScreenListener$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/ISplitScreenListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 134
    invoke-static {}, Lcom/android/systemui/shared/recents/ISplitScreenListener$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/ISplitScreenListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/ISplitScreenListener;->onTaskStageChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 141
    throw p0
.end method
