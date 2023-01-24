.class final Lorg/kodein/di/android/ModuleKt$androidCoreModule$1;
.super Lkotlin/jvm/internal/Lambda;
.source "module.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/android/ModuleKt;->androidCoreModule(Landroid/app/Application;)Lorg/kodein/di/Kodein$Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/kodein/di/Kodein$Builder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nmodule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 module.kt\norg/kodein/di/android/ModuleKt$androidCoreModule$1\n+ 2 types.kt\norg/kodein/di/TypesKt\n*L\n1#1,185:1\n310#2:186\n310#2:187\n310#2:188\n310#2:189\n310#2:190\n310#2:191\n310#2:192\n310#2:193\n310#2:194\n310#2:195\n310#2:196\n310#2:197\n310#2:198\n310#2:199\n310#2:200\n310#2:201\n310#2:202\n310#2:203\n310#2:204\n310#2:205\n310#2:206\n310#2:207\n310#2:208\n310#2:209\n310#2:210\n310#2:211\n310#2:212\n310#2:213\n310#2:214\n310#2:215\n310#2:216\n310#2:217\n310#2:218\n310#2:219\n310#2:220\n310#2:221\n310#2:222\n310#2:223\n310#2:224\n310#2:225\n310#2:226\n310#2:227\n310#2:228\n310#2:229\n310#2:230\n310#2:231\n310#2:232\n310#2:233\n310#2:234\n310#2:235\n310#2:236\n310#2:237\n310#2:238\n310#2:239\n310#2:240\n310#2:241\n310#2:242\n310#2:243\n310#2:244\n310#2:245\n310#2:246\n310#2:247\n310#2:248\n310#2:249\n310#2:250\n310#2:251\n310#2:252\n310#2:253\n310#2:254\n310#2:255\n310#2:256\n310#2:257\n310#2:258\n310#2:259\n310#2:260\n310#2:261\n310#2:262\n310#2:263\n310#2:264\n310#2:265\n310#2:266\n310#2:267\n310#2:268\n310#2:269\n*E\n*S KotlinDebug\n*F\n+ 1 module.kt\norg/kodein/di/android/ModuleKt$androidCoreModule$1\n*L\n75#1:186\n77#1:187\n79#1:188\n80#1:189\n81#1:190\n82#1:191\n83#1:192\n84#1:193\n85#1:194\n87#1:195\n88#1:196\n88#1:197\n90#1:198\n90#1:199\n91#1:200\n91#1:201\n92#1:202\n92#1:203\n93#1:204\n93#1:205\n95#1:206\n95#1:207\n96#1:208\n96#1:209\n97#1:210\n97#1:211\n99#1:212\n100#1:213\n101#1:214\n102#1:215\n103#1:216\n104#1:217\n105#1:218\n106#1:219\n107#1:220\n108#1:221\n109#1:222\n110#1:223\n111#1:224\n112#1:225\n113#1:226\n114#1:227\n115#1:228\n116#1:229\n117#1:230\n118#1:231\n119#1:232\n120#1:233\n121#1:234\n122#1:235\n123#1:236\n124#1:237\n125#1:238\n126#1:239\n127#1:240\n130#1:241\n131#1:242\n132#1:243\n136#1:244\n137#1:245\n141#1:246\n145#1:247\n146#1:248\n147#1:249\n148#1:250\n152#1:251\n153#1:252\n154#1:253\n155#1:254\n156#1:255\n157#1:256\n158#1:257\n159#1:258\n160#1:259\n161#1:260\n165#1:261\n166#1:262\n170#1:263\n171#1:264\n172#1:265\n173#1:266\n177#1:267\n178#1:268\n182#1:269\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lorg/kodein/di/Kodein$Builder;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $app:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1;->$app:Landroid/app/Application;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/kodein/di/Kodein$Builder;

    invoke-virtual {p0, p1}, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1;->invoke(Lorg/kodein/di/Kodein$Builder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/kodein/di/Kodein$Builder;)V
    .locals 11

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lorg/kodein/di/android/ModuleKt;->getAndroidCoreContextTranslators()Lorg/kodein/di/Kodein$Module;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->importOnce$default(Lorg/kodein/di/Kodein$Builder;Lorg/kodein/di/Kodein$Module;ZILjava/lang/Object;)V

    .line 186
    new-instance v0, Lorg/kodein/di/ClassTypeToken;

    const-class v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v0, Lorg/kodein/di/TypeToken;

    const/4 v1, 0x3

    .line 77
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    invoke-static {}, Lorg/kodein/di/TypeTokenKt;->getAnyToken()Lorg/kodein/di/TypeToken;

    move-result-object v4

    .line 187
    new-instance v5, Lorg/kodein/di/ClassTypeToken;

    const-class v6, Landroid/app/Application;

    invoke-direct {v5, v6}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v5, Lorg/kodein/di/TypeToken;

    .line 77
    new-instance v6, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$1;

    invoke-direct {v6, p0}, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$1;-><init>(Lorg/kodein/di/android/ModuleKt$androidCoreModule$1;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    new-instance v7, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v7, v4, v5, v6}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v7}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 79
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 188
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/content/res/AssetManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 79
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$2;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$2;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 80
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 189
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/content/ContentResolver;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 80
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$3;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$3;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 81
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 190
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 81
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$4;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$4;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 82
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 191
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/os/Looper;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 82
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$5;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$5;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 83
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 192
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/content/pm/PackageManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 83
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$6;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$6;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 84
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 193
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/content/res/Resources;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 84
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$7;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$7;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 85
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 194
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/content/res/Resources$Theme;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 85
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$8;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$8;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 87
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 195
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/content/SharedPreferences;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 87
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$9;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$9;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 88
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 196
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 197
    new-instance v5, Lorg/kodein/di/ClassTypeToken;

    const-class v6, Landroid/content/SharedPreferences;

    invoke-direct {v5, v6}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v5, Lorg/kodein/di/TypeToken;

    .line 88
    sget-object v6, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$10;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$10;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    new-instance v7, Lorg/kodein/di/bindings/Factory;

    invoke-direct {v7, v0, v4, v5, v6}, Lorg/kodein/di/bindings/Factory;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function2;)V

    check-cast v7, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v7}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 198
    new-instance v2, Lorg/kodein/di/ClassTypeToken;

    const-class v4, Ljava/io/File;

    invoke-direct {v2, v4}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    move-object v6, v2

    check-cast v6, Lorg/kodein/di/TypeToken;

    const-string v7, "cache"

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, p1

    .line 90
    invoke-static/range {v5 .. v10}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$TypeBinder;

    move-result-object v2

    .line 199
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Ljava/io/File;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 90
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$11;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$11;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$TypeBinder;->with(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 200
    new-instance v2, Lorg/kodein/di/ClassTypeToken;

    const-class v4, Ljava/io/File;

    invoke-direct {v2, v4}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    move-object v6, v2

    check-cast v6, Lorg/kodein/di/TypeToken;

    const-string v7, "externalCache"

    move-object v5, p1

    .line 91
    invoke-static/range {v5 .. v10}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$TypeBinder;

    move-result-object v2

    .line 201
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Ljava/io/File;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 91
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$12;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$12;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$TypeBinder;->with(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 202
    new-instance v2, Lorg/kodein/di/ClassTypeToken;

    const-class v4, Ljava/io/File;

    invoke-direct {v2, v4}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    move-object v6, v2

    check-cast v6, Lorg/kodein/di/TypeToken;

    const-string v7, "files"

    move-object v5, p1

    .line 92
    invoke-static/range {v5 .. v10}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$TypeBinder;

    move-result-object v2

    .line 203
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Ljava/io/File;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 92
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$13;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$13;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$TypeBinder;->with(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 204
    new-instance v2, Lorg/kodein/di/ClassTypeToken;

    const-class v4, Ljava/io/File;

    invoke-direct {v2, v4}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    move-object v6, v2

    check-cast v6, Lorg/kodein/di/TypeToken;

    const-string v7, "obb"

    move-object v5, p1

    .line 93
    invoke-static/range {v5 .. v10}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$TypeBinder;

    move-result-object v2

    .line 205
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Ljava/io/File;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 93
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$14;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$14;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$TypeBinder;->with(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 206
    new-instance v2, Lorg/kodein/di/ClassTypeToken;

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    move-object v6, v2

    check-cast v6, Lorg/kodein/di/TypeToken;

    const-string v7, "packageCodePath"

    move-object v5, p1

    .line 95
    invoke-static/range {v5 .. v10}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$TypeBinder;

    move-result-object v2

    .line 207
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 95
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$15;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$15;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$TypeBinder;->with(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 208
    new-instance v2, Lorg/kodein/di/ClassTypeToken;

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    move-object v6, v2

    check-cast v6, Lorg/kodein/di/TypeToken;

    const-string v7, "packageName"

    move-object v5, p1

    .line 96
    invoke-static/range {v5 .. v10}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$TypeBinder;

    move-result-object v2

    .line 209
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 96
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$16;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$16;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$TypeBinder;->with(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 210
    new-instance v2, Lorg/kodein/di/ClassTypeToken;

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    move-object v6, v2

    check-cast v6, Lorg/kodein/di/TypeToken;

    const-string v7, "packageResourcePath"

    move-object v5, p1

    .line 97
    invoke-static/range {v5 .. v10}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$TypeBinder;

    move-result-object v2

    .line 211
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 97
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$17;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$17;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$TypeBinder;->with(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 99
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 212
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 99
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$18;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$18;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 100
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 213
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/accounts/AccountManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 100
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$19;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$19;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 101
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 214
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/app/ActivityManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 101
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$20;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$20;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 102
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 215
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/app/AlarmManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 102
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$21;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$21;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 103
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 216
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/media/AudioManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 103
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$22;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$22;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 104
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 217
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/content/ClipboardManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 104
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$23;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$23;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 105
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 218
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/net/ConnectivityManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 105
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$24;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$24;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 106
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 219
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 106
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$25;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$25;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 107
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 220
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/app/DownloadManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 107
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$26;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$26;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 108
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 221
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/os/DropBoxManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 108
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$27;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$27;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 109
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 222
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 109
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$28;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$28;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 110
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 223
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/app/KeyguardManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 110
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$29;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$29;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 111
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 224
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/view/LayoutInflater;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 111
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$30;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$30;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 112
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 225
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/location/LocationManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 112
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$31;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$31;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 113
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 226
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/nfc/NfcManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 113
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$32;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$32;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 114
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 227
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/app/NotificationManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 114
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$33;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$33;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 115
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 228
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/os/PowerManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 115
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$34;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$34;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 116
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 229
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/app/SearchManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 116
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$35;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$35;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 117
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 230
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/hardware/SensorManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 117
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$36;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$36;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 118
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 231
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/os/storage/StorageManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 118
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$37;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$37;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 119
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 232
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/telephony/TelephonyManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 119
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$38;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$38;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 120
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 233
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/view/textservice/TextServicesManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 120
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$39;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$39;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 121
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 234
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/app/UiModeManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 121
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$40;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$40;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 122
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 235
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/hardware/usb/UsbManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 122
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$41;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$41;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 123
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 236
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/os/Vibrator;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 123
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$42;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$42;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 124
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 237
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/app/WallpaperManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 124
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$43;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$43;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 125
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 238
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 125
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$44;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$44;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 126
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 239
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/net/wifi/WifiManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 126
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$45;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$45;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 127
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 240
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/view/WindowManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 127
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$46;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$46;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 129
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_0

    .line 130
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 241
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/hardware/input/InputManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 130
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$47;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$47;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 131
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 242
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/media/MediaRouter;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 131
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$48;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$48;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 132
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 243
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/net/nsd/NsdManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 132
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$49;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$49;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 135
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v2, v4, :cond_1

    .line 136
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 244
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/hardware/display/DisplayManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 136
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$50;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$50;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 137
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 245
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/os/UserManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 137
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$51;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$51;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 140
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v2, v4, :cond_2

    .line 141
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 246
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/bluetooth/BluetoothManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 141
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$52;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$52;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 144
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v2, v4, :cond_3

    .line 145
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 247
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/app/AppOpsManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 145
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$53;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$53;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 146
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 248
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/view/accessibility/CaptioningManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 146
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$54;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$54;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 147
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 249
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/hardware/ConsumerIrManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 147
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$55;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$55;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 148
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 250
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/print/PrintManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 148
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$56;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$56;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 151
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_4

    .line 152
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 251
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/appwidget/AppWidgetManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 152
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$57;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$57;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 153
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 252
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/os/BatteryManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 153
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$58;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$58;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 154
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 253
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/hardware/camera2/CameraManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 154
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$59;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$59;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 155
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 254
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/app/job/JobScheduler;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 155
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$60;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$60;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 156
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 255
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/content/pm/LauncherApps;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 156
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$61;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$61;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 157
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 256
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/media/projection/MediaProjectionManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 157
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$62;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$62;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 158
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 257
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/media/session/MediaSessionManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 158
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$63;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$63;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 159
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 258
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/content/RestrictionsManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 159
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$64;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$64;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 160
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 259
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/telecom/TelecomManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 160
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$65;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$65;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 161
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 260
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/media/tv/TvInputManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 161
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$66;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$66;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 164
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v2, v4, :cond_5

    .line 165
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 261
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/telephony/SubscriptionManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 165
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$67;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$67;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 166
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 262
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/app/usage/UsageStatsManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 166
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$68;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$68;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 169
    :cond_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_6

    .line 170
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 263
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/telephony/CarrierConfigManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 170
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$69;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$69;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 171
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 264
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 171
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$70;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$70;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 172
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 265
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/media/midi/MidiManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 172
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$71;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$71;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 173
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 266
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/app/usage/NetworkStatsManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 173
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$72;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$72;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 176
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v2, v4, :cond_7

    .line 177
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 267
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/os/HardwarePropertiesManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 177
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$73;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$73;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 178
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object v2

    .line 268
    new-instance v4, Lorg/kodein/di/ClassTypeToken;

    const-class v5, Landroid/os/health/SystemHealthManager;

    invoke-direct {v4, v5}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v4, Lorg/kodein/di/TypeToken;

    .line 178
    sget-object v5, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$74;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$74;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v6, v0, v4, v5}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v2, v6}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 181
    :cond_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-lt v2, v4, :cond_8

    .line 182
    invoke-static {p1, v3, v3, v1, v3}, Lorg/kodein/di/Kodein$Builder$DefaultImpls;->Bind$default(Lorg/kodein/di/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/kodein/di/Kodein$Builder$DirectBinder;

    move-result-object p1

    .line 269
    new-instance v1, Lorg/kodein/di/ClassTypeToken;

    const-class v2, Landroid/content/pm/ShortcutManager;

    invoke-direct {v1, v2}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v1, Lorg/kodein/di/TypeToken;

    .line 182
    sget-object v2, Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$75;->INSTANCE:Lorg/kodein/di/android/ModuleKt$androidCoreModule$1$75;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lorg/kodein/di/bindings/Provider;

    invoke-direct {v3, v0, v1, v2}, Lorg/kodein/di/bindings/Provider;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {p1, v3}, Lorg/kodein/di/Kodein$Builder$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    :cond_8
    return-void
.end method
