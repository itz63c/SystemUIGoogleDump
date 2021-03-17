.class final synthetic Lcom/android/systemui/statusbar/policy/BatteryStateNotifierKt$sam$java_lang_Runnable$0;
.super Ljava/lang/Object;
.source "BatteryStateNotifier.kt"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryStateNotifierKt$sam$java_lang_Runnable$0;->function:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryStateNotifierKt$sam$java_lang_Runnable$0;->function:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
