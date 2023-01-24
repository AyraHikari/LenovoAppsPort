.class public final Lcom/zui/sdk/service/file/ConstKt;
.super Ljava/lang/Object;
.source "const.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\t\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007\"\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "FILE_TRANSFER_PACKAGE_NAME",
        "",
        "FILE_TRANSFER_SERVICE_CLASS",
        "TAG",
        "mediaMimeTypeList",
        "",
        "getMediaMimeTypeList",
        "()Ljava/util/List;",
        "sApkExtensionList",
        "getSApkExtensionList",
        "sDocExtensionList",
        "getSDocExtensionList",
        "sOfficeExtensionList",
        "getSOfficeExtensionList",
        "lenovoone-service-file_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final FILE_TRANSFER_PACKAGE_NAME:Ljava/lang/String; = "com.zui.wifip2p"

.field public static final FILE_TRANSFER_SERVICE_CLASS:Ljava/lang/String; = "com.zui.wifip2p.RemoteStatusService"

.field public static final TAG:Ljava/lang/String; = "LenovoOneSDK-File"

.field private static final mediaMimeTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sApkExtensionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDocExtensionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOfficeExtensionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 27

    const-string v0, "apk"

    .line 8
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/zui/sdk/service/file/ConstKt;->sApkExtensionList:Ljava/util/List;

    const-string v1, "doc"

    const-string v2, "dot"

    const-string v3, "docx"

    const-string v4, "dotx"

    const-string v5, "docm"

    const-string v6, "dotm"

    const-string v7, "xls"

    const-string v8, "xlt"

    const-string v9, "xla"

    const-string v10, "xlsx"

    const-string v11, "xltx"

    const-string v12, "xlsm"

    const-string v13, "xltm"

    const-string v14, "xlam"

    const-string v15, "xlsb"

    const-string v16, "ppt"

    const-string v17, "pot"

    const-string v18, "pps"

    const-string v19, "ppa"

    const-string v20, "pptx"

    const-string v21, "potx"

    const-string v22, "ppsx"

    const-string v23, "ppam"

    const-string v24, "pptm"

    const-string v25, "potm"

    const-string v26, "ppsm"

    .line 15
    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/zui/sdk/service/file/ConstKt;->sOfficeExtensionList:Ljava/util/List;

    const-string v0, "pdf"

    .line 18
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/zui/sdk/service/file/ConstKt;->sDocExtensionList:Ljava/util/List;

    const-string v0, "image"

    const-string v1, "video"

    const-string v2, "audio"

    .line 23
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/zui/sdk/service/file/ConstKt;->mediaMimeTypeList:Ljava/util/List;

    return-void
.end method

.method public static final getMediaMimeTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/zui/sdk/service/file/ConstKt;->mediaMimeTypeList:Ljava/util/List;

    return-object v0
.end method

.method public static final getSApkExtensionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/zui/sdk/service/file/ConstKt;->sApkExtensionList:Ljava/util/List;

    return-object v0
.end method

.method public static final getSDocExtensionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/zui/sdk/service/file/ConstKt;->sDocExtensionList:Ljava/util/List;

    return-object v0
.end method

.method public static final getSOfficeExtensionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    sget-object v0, Lcom/zui/sdk/service/file/ConstKt;->sOfficeExtensionList:Ljava/util/List;

    return-object v0
.end method
