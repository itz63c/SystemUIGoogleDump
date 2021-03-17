.class Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOverviewProxy.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/IOverviewProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/systemui/shared/recents/IOverviewProxy;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 262
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 264
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 272
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 273
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    throw p0
.end method

.method public onAssistantAvailable(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 399
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 400
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget-object p0, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 403
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 404
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onAssistantAvailable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 411
    throw p0
.end method

.method public onAssistantVisibilityChanged(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 420
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 422
    iget-object p0, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 424
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 425
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onAssistantVisibilityChanged(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 432
    throw p0
.end method

.method public onBackAction(ZIIZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 442
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 443
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p4, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 446
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p5, :cond_2

    move v1, v2

    .line 447
    :cond_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    iget-object p0, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x10

    const/4 v3, 0x0

    invoke-interface {p0, v1, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_3

    .line 450
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 451
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onBackAction(ZIIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 458
    throw p0
.end method

.method public onInitialize(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 286
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 296
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 297
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onInitialize(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 304
    throw p0
.end method

.method public onOverviewHidden(ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 354
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 355
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_1

    move v1, v2

    .line 356
    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget-object p0, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x9

    const/4 v3, 0x0

    invoke-interface {p0, v1, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 359
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 360
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewHidden(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 367
    throw p0
.end method

.method public onOverviewShown(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 333
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 334
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-object p0, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 337
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 338
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewShown(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 345
    throw p0
.end method

.method public onOverviewToggle()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 313
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 314
    iget-object p0, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 316
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 317
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewToggle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 324
    throw p0
.end method

.method public onSplitScreenSecondaryBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 488
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 490
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 497
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 501
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 505
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 506
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onSplitScreenSecondaryBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    throw p0
.end method

.method public onSystemUiStateChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 467
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget-object p0, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 471
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 472
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onSystemUiStateChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 479
    throw p0
.end method

.method public onTip(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 377
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget-object p0, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 382
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 383
    invoke-static {}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->getDefaultImpl()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onTip(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 390
    throw p0
.end method
