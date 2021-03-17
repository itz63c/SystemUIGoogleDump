.class final Lcom/android/systemui/statusbar/CommandQueue$H;
.super Landroid/os/Handler;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/CommandQueue;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;)V
    .locals 0

    .line 1050
    iput-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1051
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;Lcom/android/systemui/statusbar/CommandQueue$1;)V
    .locals 0

    .line 1049
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1055
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_48

    .line 1191
    :goto_0
    :sswitch_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_17

    .line 1192
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onEmergencyActionLaunchGestureDetected()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1392
    :sswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1393
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1394
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1395
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleWindowManagerLoggingCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_2

    .line 1398
    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 1393
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 1399
    invoke-static {}, Lcom/android/systemui/statusbar/CommandQueue;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to handle logging command"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1401
    :cond_2
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_48

    .line 1387
    :goto_4
    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1388
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->requestWindowMagnificationConnection(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1382
    :sswitch_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1383
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->suppressAmbientDisplay(Z)V

    goto :goto_5

    .line 1377
    :goto_6
    :sswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1378
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onTracingStateChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1368
    :sswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1369
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1370
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    .line 1371
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 1372
    invoke-interface {v1, v0, p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_7

    .line 1352
    :sswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1353
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1354
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Landroid/os/IBinder;

    .line 1355
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Ljava/lang/CharSequence;

    .line 1356
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Landroid/os/IBinder;

    .line 1357
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Landroid/app/ITransientNotificationCallback;

    .line 1359
    iget v13, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1360
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1361
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move v2, v13

    move-object v3, v0

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move v7, p1

    move-object v8, v12

    .line 1362
    invoke-interface/range {v1 .. v8}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;)V

    goto :goto_8

    .line 1347
    :goto_9
    :sswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1348
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->dismissInattentiveSleepWarning(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1342
    :goto_a
    :sswitch_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_17

    .line 1343
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showInattentiveSleepWarning()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1334
    :sswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1335
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    .line 1336
    :goto_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 1337
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2, v0, p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->abortTransient(I[I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1326
    :sswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1327
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    .line 1328
    :goto_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 1329
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v2, v0, p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showTransient(I[I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :sswitch_b
    move v0, v1

    .line 1312
    :goto_d
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_17

    .line 1313
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-lez v4, :cond_3

    move v4, v2

    goto :goto_e

    :cond_3
    move v4, v1

    :goto_e
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onRecentsAnimationStateChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1302
    :goto_f
    :sswitch_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_17

    .line 1303
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPinningEscapeToast()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1297
    :goto_10
    :sswitch_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1298
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPinningEnterExitToast(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1292
    :goto_11
    :sswitch_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1293
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showWirelessChargingAnimation(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1287
    :goto_12
    :sswitch_f
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_17

    .line 1288
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideAuthenticationDialog()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1276
    :sswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1277
    :goto_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1278
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-interface {v0, v2, v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricError(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1284
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_48

    .line 1271
    :goto_14
    :sswitch_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1272
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricHelp(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1265
    :goto_15
    :sswitch_12
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_17

    .line 1266
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricAuthenticated()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1246
    :sswitch_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$400(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v2, 0x2a0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1247
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$400(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v2, 0x290000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1248
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$400(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v2, 0x280000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1249
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1250
    :goto_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1251
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/hardware/biometrics/PromptInfo;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [I

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 1255
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 1256
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget v8, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 1259
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1251
    invoke-interface/range {v2 .. v11}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZILjava/lang/String;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1261
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_48

    :sswitch_14
    move v0, v1

    .line 1241
    :goto_17
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_17

    .line 1242
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_6

    move v5, v2

    goto :goto_18

    :cond_6
    move v5, v1

    :goto_18
    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onRotationProposal(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :sswitch_15
    move v0, v1

    .line 1236
    :goto_19
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_17

    .line 1237
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_7

    move v4, v2

    goto :goto_1a

    :cond_7
    move v4, v1

    :goto_1a
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setTopAppHidesStatusBar(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :sswitch_16
    move v0, v1

    .line 1231
    :goto_1b
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_17

    .line 1232
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_1c

    :cond_8
    move v4, v1

    :goto_1c
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleShowShutdownUi(ZLjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1092
    :goto_1d
    :sswitch_17
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_17

    .line 1093
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->togglePanel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1226
    :goto_1e
    :sswitch_18
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_17

    .line 1227
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleShowGlobalActionsMenu()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1221
    :goto_1f
    :sswitch_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1222
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleSystemKey(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 1134
    :goto_20
    :sswitch_1a
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_17

    .line 1135
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->dismissKeyboardShortcutsMenu()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 1171
    :goto_21
    :sswitch_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1172
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionFinished(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1216
    :goto_22
    :sswitch_1c
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_17

    .line 1217
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleSplitScreen()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 1211
    :goto_23
    :sswitch_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1212
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->clickTile(Landroid/content/ComponentName;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1206
    :goto_24
    :sswitch_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1207
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->remQsTile(Landroid/content/ComponentName;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 1201
    :goto_25
    :sswitch_1f
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1202
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->addQsTile(Landroid/content/ComponentName;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1196
    :goto_26
    :sswitch_20
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_17

    .line 1197
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPictureInPictureMenu()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 1139
    :goto_27
    :sswitch_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1140
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleKeyboardShortcutsMenu(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 1186
    :goto_28
    :sswitch_22
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1187
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onCameraLaunchGestureDetected(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 1181
    :goto_29
    :sswitch_23
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1182
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->startAssist(Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 1176
    :goto_2a
    :sswitch_24
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_17

    .line 1177
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showAssistDisclosure()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 1164
    :sswitch_25
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    move v0, v1

    .line 1165
    :goto_2b
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_17

    .line 1166
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 1167
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v3, :cond_9

    move v10, v2

    goto :goto_2c

    :cond_9
    move v10, v1

    .line 1166
    :goto_2c
    invoke-interface/range {v4 .. v10}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionStarting(IJJZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 1159
    :goto_2d
    :sswitch_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1160
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionCancelled(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :sswitch_27
    move v0, v1

    .line 1154
    :goto_2e
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_17

    .line 1155
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_a

    move v5, v2

    goto :goto_2f

    :cond_a
    move v5, v1

    :goto_2f
    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionPending(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 1149
    :goto_30
    :sswitch_28
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1150
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showScreenPinningRequest(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :sswitch_29
    move v0, v1

    .line 1114
    :goto_31
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_17

    .line 1115
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_b

    move v4, v2

    goto :goto_32

    :cond_b
    move v4, v1

    :goto_32
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_c

    move v5, v2

    goto :goto_33

    :cond_c
    move v5, v1

    :goto_33
    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideRecentApps(ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :sswitch_2a
    move v0, v1

    .line 1109
    :goto_34
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_17

    .line 1110
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_d

    move v4, v2

    goto :goto_35

    :cond_d
    move v4, v1

    :goto_35
    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showRecentApps(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 1144
    :goto_36
    :sswitch_2b
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1145
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setWindowState(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 1129
    :goto_37
    :sswitch_2c
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_17

    .line 1130
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->cancelPreloadRecentApps()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 1124
    :goto_38
    :sswitch_2d
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_17

    .line 1125
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->preloadRecentApps()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 1119
    :goto_39
    :sswitch_2e
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_17

    .line 1120
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleRecentApps()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 1102
    :sswitch_2f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1103
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object p0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Landroid/os/IBinder;

    iget v6, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v7, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget p0, p1, Lcom/android/internal/os/SomeArgs;->argi4:I

    if-eqz p0, :cond_e

    move v8, v2

    goto :goto_3a

    :cond_e
    move v8, v1

    :goto_3a
    iget p0, p1, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-eqz p0, :cond_f

    move v9, v2

    goto :goto_3b

    :cond_f
    move v9, v1

    :goto_3b
    invoke-static/range {v3 .. v9}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;ILandroid/os/IBinder;IIZZ)V

    goto/16 :goto_48

    .line 1307
    :goto_3c
    :sswitch_30
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1308
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onDisplayReady(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 1317
    :sswitch_31
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    move v0, v1

    .line 1318
    :goto_3d
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_12

    .line 1319
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v6, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, [Lcom/android/internal/view/AppearanceRegion;

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-ne v3, v2, :cond_10

    move v8, v2

    goto :goto_3e

    :cond_10
    move v8, v1

    :goto_3e
    iget v9, p1, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-ne v3, v2, :cond_11

    move v10, v2

    goto :goto_3f

    :cond_11
    move v10, v1

    :goto_3f
    invoke-interface/range {v4 .. v10}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 1323
    :cond_12
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_48

    .line 1097
    :goto_40
    :sswitch_32
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1098
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandSettingsPanel(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :sswitch_33
    move v0, v1

    .line 1087
    :goto_41
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_17

    .line 1088
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_13

    move v5, v2

    goto :goto_42

    :cond_13
    move v5, v1

    :goto_42
    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateCollapsePanels(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 1082
    :goto_43
    :sswitch_34
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_17

    .line 1083
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandNotificationsPanel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 1075
    :sswitch_35
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    move v0, v1

    .line 1076
    :goto_44
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_17

    .line 1077
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v3}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v6, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v7, p1, Lcom/android/internal/os/SomeArgs;->argi4:I

    if-eqz v7, :cond_14

    move v7, v2

    goto :goto_45

    :cond_14
    move v7, v1

    :goto_45
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->disable(IIIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 1058
    :sswitch_36
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_16

    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    goto :goto_48

    .line 1067
    :cond_15
    :goto_46
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1068
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->removeIcon(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 1060
    :cond_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 1061
    :goto_47
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 1062
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_17
    :goto_48
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_36
        0x20000 -> :sswitch_35
        0x30000 -> :sswitch_34
        0x40000 -> :sswitch_33
        0x50000 -> :sswitch_32
        0x60000 -> :sswitch_31
        0x70000 -> :sswitch_30
        0x80000 -> :sswitch_2f
        0x90000 -> :sswitch_2e
        0xa0000 -> :sswitch_2d
        0xb0000 -> :sswitch_2c
        0xc0000 -> :sswitch_2b
        0xd0000 -> :sswitch_2a
        0xe0000 -> :sswitch_29
        0x120000 -> :sswitch_28
        0x130000 -> :sswitch_27
        0x140000 -> :sswitch_26
        0x150000 -> :sswitch_25
        0x160000 -> :sswitch_24
        0x170000 -> :sswitch_23
        0x180000 -> :sswitch_22
        0x190000 -> :sswitch_21
        0x1a0000 -> :sswitch_20
        0x1b0000 -> :sswitch_1f
        0x1c0000 -> :sswitch_1e
        0x1d0000 -> :sswitch_1d
        0x1e0000 -> :sswitch_1c
        0x1f0000 -> :sswitch_1b
        0x200000 -> :sswitch_1a
        0x210000 -> :sswitch_19
        0x220000 -> :sswitch_18
        0x230000 -> :sswitch_17
        0x240000 -> :sswitch_16
        0x250000 -> :sswitch_15
        0x260000 -> :sswitch_14
        0x270000 -> :sswitch_13
        0x280000 -> :sswitch_12
        0x290000 -> :sswitch_11
        0x2a0000 -> :sswitch_10
        0x2b0000 -> :sswitch_f
        0x2c0000 -> :sswitch_e
        0x2d0000 -> :sswitch_d
        0x2e0000 -> :sswitch_c
        0x2f0000 -> :sswitch_b
        0x300000 -> :sswitch_a
        0x310000 -> :sswitch_9
        0x320000 -> :sswitch_8
        0x330000 -> :sswitch_7
        0x340000 -> :sswitch_6
        0x350000 -> :sswitch_5
        0x360000 -> :sswitch_4
        0x370000 -> :sswitch_3
        0x380000 -> :sswitch_2
        0x390000 -> :sswitch_1
        0x3a0000 -> :sswitch_0
    .end sparse-switch
.end method
