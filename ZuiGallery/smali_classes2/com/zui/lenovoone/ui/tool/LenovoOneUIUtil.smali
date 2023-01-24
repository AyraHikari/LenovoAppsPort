.class public final Lcom/zui/lenovoone/ui/tool/LenovoOneUIUtil;
.super Ljava/lang/Object;
.source "LenovoOneUIUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLenovoOneUIUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LenovoOneUIUtil.kt\ncom/zui/lenovoone/ui/tool/LenovoOneUIUtil\n*L\n1#1,35:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/zui/lenovoone/ui/tool/LenovoOneUIUtil;",
        "",
        "()V",
        "KEY_MIME_TYPES",
        "",
        "KEY_NAME",
        "KEY_URIS",
        "extras",
        "Lcom/zui/lenovoone/ui/tool/Extras;",
        "intent",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "lenovoone-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/zui/lenovoone/ui/tool/LenovoOneUIUtil;

.field private static final KEY_MIME_TYPES:Ljava/lang/String; = "key_mime_types"

.field private static final KEY_NAME:Ljava/lang/String; = "key_name"

.field private static final KEY_URIS:Ljava/lang/String; = "key_uris"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/zui/lenovoone/ui/tool/LenovoOneUIUtil;

    invoke-direct {v0}, Lcom/zui/lenovoone/ui/tool/LenovoOneUIUtil;-><init>()V

    sput-object v0, Lcom/zui/lenovoone/ui/tool/LenovoOneUIUtil;->INSTANCE:Lcom/zui/lenovoone/ui/tool/LenovoOneUIUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final extras(Landroid/content/Intent;)Lcom/zui/lenovoone/ui/tool/Extras;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/zui/lenovoone/ui/tool/Extras;

    .line 29
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "key_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 30
    :goto_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v4, "key_mime_types"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 31
    :goto_1
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v3, "key_uris"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 28
    :cond_2
    invoke-direct {v0, v1, v2, v3}, Lcom/zui/lenovoone/ui/tool/Extras;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static final intent(Landroid/content/Context;Lcom/zui/lenovoone/ui/tool/Extras;)Landroid/content/Intent;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/zui/lenovoone/ui/tool/Extras;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/zui/lenovoone/ui/tool/Extras;->getMime()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_mime_types"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/zui/lenovoone/ui/tool/Extras;->getUris()[Ljava/lang/String;

    move-result-object p1

    const-string v1, "key_uris"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 22
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/zui/lenovoone/ui/LenovoOneSendActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "Intent(context, LenovoOn\u2026       .putExtras(bundle)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
