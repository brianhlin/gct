#ifndef GLOBUS_DONT_DOCUMENT_INTERNAL
/**
 * @file globus_callout_constants.h
 * Globus Callout Infrastructure
 * @author Sam Meder
 *
 * $RCSfile$
 * $Revision$
 * $Date$
 */
#endif

#ifndef GLOBUS_CALLOUT_CONSTANTS_H
#define GLOBUS_CALLOUT_CONSTANTS_H

/**
 * @defgroup globus_callout_constants Globus Callout Constants
 */

/**
 * Globus Callout Error codes
 * @ingroup globus_callout_constants
 */
typedef enum
{
    /** Success - never used */
    GLOBUS_CALLOUT_ERROR_SUCCESS = 0,
    /** Hash table operation failed */
    GLOBUS_CALLOUT_ERROR_WITH_HASHTABLE = 1,
    /** Failed to open configuration file */
    GLOBUS_CALLOUT_ERROR_OPENING_CONF_FILE = 2,
    /** Failed to parse configuration file */
    GLOBUS_CALLOUT_ERROR_PARSING_CONF_FILE = 3,
    /** Dynamic library operation failed */
    GLOBUS_CALLOUT_ERROR_WITH_DL = 4,
    /** Out of memory */
    GLOBUS_CALLOUT_ERROR_OUT_OF_MEMORY = 5,
    /** The abstract type could not be found */ 
    GLOBUS_CALLOUT_ERROR_TYPE_NOT_REGISTERED = 6,
    /** The callout itself returned a error */
    GLOBUS_CALLOUT_ERROR_CALLOUT_ERROR = 7,
    /** Last marker - nver used */
    GLOBUS_CALLOUT_ERROR_LAST = 8
} globus_callout_error_t;

#endif /* GLOBUS_CALLOUT_CONSTANTS_H */
