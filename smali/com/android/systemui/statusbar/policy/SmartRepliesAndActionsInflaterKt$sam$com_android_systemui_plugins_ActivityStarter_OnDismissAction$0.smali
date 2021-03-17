.class final synthetic Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterKt$sam$com_android_systemui_plugins_ActivityStarter_OnDismissAction$0;
.super Ljava/lang/Object;
.source "SmartRepliesAndActionsInflater.kt"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = "sam$com_android_systemui_plugins_ActivityStarter_OnDismissAction$0"
.end annotation


# instance fields
.field private synthetic function:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/jvm/functions/Function0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterKt$sam$com_android_systemui_plugins_ActivityStarter_OnDismissAction$0;->function:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final synthetic onDismiss()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterKt$sam$com_android_systemui_plugins_ActivityStarter_OnDismissAction$0;->function:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
