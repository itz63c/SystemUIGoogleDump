.class final Lcom/android/systemui/statusbar/commandline/CommandRegistry$initializeCommands$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CommandRegistry.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/commandline/CommandRegistry;->initializeCommands()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/android/systemui/statusbar/commandline/Command;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/commandline/CommandRegistry;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry$initializeCommands$1;->this$0:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/systemui/statusbar/commandline/Command;
    .locals 1

    .line 94
    new-instance v0, Lcom/android/systemui/statusbar/commandline/PrefsCommand;

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry$initializeCommands$1;->this$0:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/commandline/PrefsCommand;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/commandline/CommandRegistry$initializeCommands$1;->invoke()Lcom/android/systemui/statusbar/commandline/Command;

    move-result-object p0

    return-object p0
.end method
